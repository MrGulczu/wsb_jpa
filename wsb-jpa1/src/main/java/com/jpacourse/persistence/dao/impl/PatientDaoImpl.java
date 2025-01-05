package com.jpacourse.persistence.dao.impl;

import com.jpacourse.persistence.dao.PatientDao;
import com.jpacourse.persistence.entity.DoctorEntity;
import com.jpacourse.persistence.entity.PatientEntity;
import com.jpacourse.persistence.entity.VisitEntity;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.time.LocalDateTime;
import java.util.Collection;

@Repository
public class PatientDaoImpl extends AbstractDao<PatientEntity, Long> implements PatientDao
{
    @Override
    @Transactional
    public PatientEntity findPatientById(Long patientId) {
        return entityManager.find(PatientEntity.class, patientId);
    }

    @Override
    @Transactional
    public Collection<PatientEntity> findPatientsByLastName(String lastName) {
        return entityManager.createQuery("SELECT pe FROM PatientEntity pe WHERE pe.lastName = :lastName", PatientEntity.class)
            .setParameter("lastName", lastName)
            .getResultList();
    }

    @Override
    @Transactional
    public Collection<PatientEntity> findPatientsWithVisitsCountGreaterThan(int visitsCount) {
        return entityManager.createQuery("SELECT pe FROM PatientEntity pe WHERE size(pe.visits) > :visitsCount", PatientEntity.class)
            .setParameter("visitsCount", visitsCount)
            .getResultList();
    }

    @Override
    @Transactional
    public Collection<PatientEntity> findPatientsByAllergicStatus(Boolean isAllergic) {
        // I don't have a better idea for querying my custom Boolean field (sorry :/).
        return entityManager.createQuery("SELECT pe FROM PatientEntity pe WHERE pe.isAllergic = :allergyStatus ", PatientEntity.class)
            .setParameter("allergyStatus", isAllergic)
            .getResultList();
    }

    @Override
    @Transactional
    public PatientEntity saveOrUpdate(PatientEntity patientEntity) {
        return entityManager.merge(patientEntity);
    }

    @Override
    @Transactional
    public void deletePatientById(Long patientId) {
        PatientEntity patient = entityManager.find(PatientEntity.class, patientId);
        if (patient != null) {
            entityManager.remove(patient);
        }
    }

    @Override
    @Transactional
    public VisitEntity addVisitToPatient(Long patientId, Long doctorId, String description, LocalDateTime time) {
        PatientEntity patient = entityManager.find(PatientEntity.class, patientId);

        if (patient != null) {
            VisitEntity visit = new VisitEntity();
            visit.setDescription(description);
            visit.setTime(time);
            visit.setDoctor(entityManager.find(DoctorEntity.class, doctorId));
            visit.setPatient(patient);

            patient.getVisits().add(visit);
            entityManager.merge(patient);

            return visit;
        }

        return null;
    }
}
