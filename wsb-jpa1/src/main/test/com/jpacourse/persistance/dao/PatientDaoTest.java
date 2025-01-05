package com.jpacourse.persistance.dao;

import com.jpacourse.persistence.dao.DoctorDao;
import com.jpacourse.persistence.dao.PatientDao;
import com.jpacourse.persistence.entity.DoctorEntity;
import com.jpacourse.persistence.entity.PatientEntity;
import com.jpacourse.persistence.entity.VisitEntity;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.transaction.annotation.Transactional;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import static org.assertj.core.api.Assertions.assertThat;
import static org.junit.Assert.*;

@RunWith(SpringRunner.class)
@SpringBootTest
@Transactional
public class PatientDaoTest {
    @Autowired
    private PatientDao patientDao;

    @Autowired
    private DoctorDao doctorDao;

    @Test
    public void createVisit() {
        //given
        LocalDateTime visitDate = LocalDateTime.now();
        DoctorEntity doctor = doctorDao.findOne(1L);
        PatientEntity patient = patientDao.findOne(1L);

        assertThat(patient).isNotNull();
        assertThat(doctor).isNotNull();

        int patientVisitsCount = patient.getVisits().size();

        //when
        VisitEntity result = patientDao.addVisitToPatient(1L, 1L, "some description", visitDate);

        //then
        assertThat(result).isNotNull();

        assertThat(patient.getVisits().size()).isEqualTo(patientVisitsCount + 1);
        assertThat(result.getPatient().getId()).isEqualTo(patient.getId());
        assertThat(result.getDoctor().getId()).isEqualTo(doctor.getId());
        assertThat(result.getDescription()).isEqualTo("some description");
        assertThat(result.getTime()).isEqualTo(visitDate);
    }

    @Test
    public void testFindPatientsByLastName()
    {
        // given
        String lastName = "Horbacz";

        // when
        Collection<PatientEntity> result = patientDao.findPatientsByLastName(lastName);
        List<PatientEntity> listOfResults = new ArrayList<>(result);

        // then
        assertNotNull(listOfResults);
        assertFalse(listOfResults.isEmpty());
        assertEquals(listOfResults.size(), 2);
        assertEquals(listOfResults.get(0).getLastName(), lastName);
        assertEquals(listOfResults.get(1).getLastName(), lastName);
    }

    @Test
    public void testFindPatientsWithVisitsCountGreaterThanOne() {
        // given
        int visitsCount = 2;

        // when
        Collection<PatientEntity> result = patientDao.findPatientsWithVisitsCountGreaterThan(visitsCount);
        List<PatientEntity> listOfResults = new ArrayList<>(result);

        // then
        assertNotNull(listOfResults);
        assertFalse(listOfResults.isEmpty());
        assertEquals(4, listOfResults.size());

        PatientEntity patient = listOfResults.get(0);
        assertThat(patient).isNotNull();

        assertEquals("Daniel", patient.getFirstName());

        assertThat(patient.getId()).isEqualTo(2L);
        assertThat(patient.getFirstName()).isEqualTo("Daniel");
        assertThat(patient.getLastName()).isEqualTo("Ryfa");
        assertThat(patient.getPatientNumber()).isEqualTo("PAT002");
        assertThat(patient.getDateOfBirth().toString()).isEqualTo("1989-06-07");
        assertThat(patient.getEmail()).isEqualTo("klarakozok@interia.pl");
        assertThat(patient.getTelephoneNumber()).isEqualTo("32 569 75 88");
    }

    @Test
    public void testFindPatientsWithAllergy() {
        // given
        Boolean isAllergy = true;

        // when
        Collection<PatientEntity> result = patientDao.findPatientsByAllergicStatus(isAllergy);
        List<PatientEntity> listOfResults = new ArrayList<>(result);

        // then
        assertNotNull(listOfResults);
        assertFalse(listOfResults.isEmpty());
        assertEquals(3, listOfResults.size());

        PatientEntity patient = listOfResults.get(0);
        assertNotNull(patient);

        assertEquals("Ryszard", patient.getFirstName());
        assertEquals("Roszko", patient.getLastName());
        assertEquals("PAT001", patient.getPatientNumber());
        assertThat(patient.getIsAllergic()).isEqualTo(isAllergy);

        PatientEntity patient2 = listOfResults.get(1);
        assertNotNull(patient2);

        assertEquals("Ada", patient2.getFirstName());
        assertEquals("Halama", patient2.getLastName());
        assertEquals("PAT003", patient2.getPatientNumber());
        assertThat(patient2.getIsAllergic()).isEqualTo(isAllergy);

        PatientEntity patient3 = listOfResults.get(2);
        assertNotNull(patient3);

        assertEquals("Jedrzej", patient3.getFirstName());
        assertEquals("Horbacz", patient3.getLastName());
        assertEquals("PAT005", patient3.getPatientNumber());
        assertThat(patient3.getIsAllergic()).isEqualTo(isAllergy);
    }
}