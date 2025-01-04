-- Addresses
INSERT INTO address (id, city, address_line1, address_line2, postal_code) VALUES (1, 'Malbork', 'ul. Wypoczynkowa 93/17', 'Brak', '11-600');
INSERT INTO address (id, city, address_line1, address_line2, postal_code) VALUES (2, 'Tarnobrzeg', 'aleja Orzeszkowej 35', 'Brak', '20-731');
INSERT INTO address (id, city, address_line1, address_line2, postal_code) VALUES (3, 'Nowy Sącz', 'ulica Poznańska 05', 'Brak', '29-833');
INSERT INTO address (id, city, address_line1, address_line2, postal_code) VALUES (4, 'Kraków', 'aleja Szymanowskiego 606', 'Brak', '04-311');
INSERT INTO address (id, city, address_line1, address_line2, postal_code) VALUES (5, 'Olkusz', 'al. Słowackiego 35/91', 'Brak', '01-979');
INSERT INTO address (id, city, address_line1, address_line2, postal_code) VALUES (6, 'Świnoujście', 'al. Nowa 71/68', 'Brak', '59-875');
INSERT INTO address (id, city, address_line1, address_line2, postal_code) VALUES (7, 'Poznań', 'ul. Dąbrowskiej 297', 'Brak', '18-112');
INSERT INTO address (id, city, address_line1, address_line2, postal_code) VALUES (8, 'Lębork', 'plac Żwirowa 87/78', 'Brak', '70-304');
INSERT INTO address (id, city, address_line1, address_line2, postal_code) VALUES (9, 'Żagań', 'ul. Staffa 548', 'Brak', '94-186');
INSERT INTO address (id, city, address_line1, address_line2, postal_code) VALUES (10, 'Szczecinek', 'al. Rzemieślnicza 787', 'Brak', '36-123');
INSERT INTO address (id, city, address_line1, address_line2, postal_code) VALUES (11, 'Gdynia', 'aleja Maczka 22/66', 'Brak', '94-899');
INSERT INTO address (id, city, address_line1, address_line2, postal_code) VALUES (12, 'Łomża', 'pl. Perłowa 07/48', 'Brak', '44-772');
INSERT INTO address (id, city, address_line1, address_line2, postal_code) VALUES (13, 'Gorlice', 'plac Tylna 54', 'Brak', '56-472');
INSERT INTO address (id, city, address_line1, address_line2, postal_code) VALUES (14, 'Bielsk Podlaski', 'ul. Brzoskwiniowa 02/61', 'Brak', '67-842');
INSERT INTO address (id, city, address_line1, address_line2, postal_code) VALUES (15, 'Nysa', 'pl. Cmentarna 900', 'Brak', '14-813');

-- Doctors
INSERT INTO doctor (id, first_name, last_name, telephone_number, email, doctor_number, specialization, address_id) VALUES (1, 'Ida', 'Foremniak', '+48 32 118 79 81', 'halamaaurelia@hotmail.com', 'DOC001', 'Ortopedia', 12);
INSERT INTO doctor (id, first_name, last_name, telephone_number, email, doctor_number, specialization, address_id) VALUES (2, 'Paweł', 'Godyń', '720 803 549', 'nelaufniarz@spoldzielnia.net', 'DOC002', 'Dermatologia', 8);
INSERT INTO doctor (id, first_name, last_name, telephone_number, email, doctor_number, specialization, address_id) VALUES (3, 'Marianna', 'Makar', '+48 605 699 443', 'jfijalek@gmail.com', 'DOC003', 'Ortopedia', 14);
INSERT INTO doctor (id, first_name, last_name, telephone_number, email, doctor_number, specialization, address_id) VALUES (4, 'Miłosz', 'Murach', '+48 792 965 495', 'hjeszka@gabinety.org', 'DOC004', 'Pediatria', 11);
INSERT INTO doctor (id, first_name, last_name, telephone_number, email, doctor_number, specialization, address_id) VALUES (5, 'Kornel', 'Domżał', '+48 787 266 361', 'hdarlak@onet.pl', 'DOC005', 'Dermatologia', 7);
INSERT INTO doctor (id, first_name, last_name, telephone_number, email, doctor_number, specialization, address_id) VALUES (6, 'Elżbieta', 'Cofała', '722 956 540', 'jan54@fundacja.org', 'DOC006', 'Kardiologia', 1);
INSERT INTO doctor (id, first_name, last_name, telephone_number, email, doctor_number, specialization, address_id) VALUES (7, 'Patryk', 'Ważna', '780 661 550', 'klarazasepa@ppuh.com', 'DOC007', 'Ortopedia', 3);
INSERT INTO doctor (id, first_name, last_name, telephone_number, email, doctor_number, specialization, address_id) VALUES (8, 'Józef', 'Czerniec', '32 747 32 75', 'uwiatrak@gmail.com', 'DOC008', 'Kardiologia', 13);
INSERT INTO doctor (id, first_name, last_name, telephone_number, email, doctor_number, specialization, address_id) VALUES (9, 'Juliusz', 'Wyciszkiewicz', '+48 692 137 758', 'swigonksawery@hotmail.com', 'DOC009', 'Dermatologia', 15);
INSERT INTO doctor (id, first_name, last_name, telephone_number, email, doctor_number, specialization, address_id) VALUES (10, 'Olaf', 'Kusek', '+48 696 838 877', 'grygokacper@o2.pl', 'DOC010', 'Dermatologia', 2);

-- Patients
INSERT INTO patient (id, first_name, last_name, telephone_number, email, patient_number, date_of_birth, address_id, is_allergic) VALUES (1, 'Ryszard', 'Roszko', '+48 885 598 633', 'muellerrobert@onet.pl', 'PAT001', '1996-05-12', 4, true);
INSERT INTO patient (id, first_name, last_name, telephone_number, email, patient_number, date_of_birth, address_id, is_allergic) VALUES (2, 'Daniel', 'Ryfa', '32 569 75 88', 'klarakozok@interia.pl', 'PAT002', '1989-06-07', 6, false);
INSERT INTO patient (id, first_name, last_name, telephone_number, email, patient_number, date_of_birth, address_id, is_allergic) VALUES (3, 'Ada', 'Halama', '+48 505 951 799', 'korneliasiedlik@hotmail.com', 'PAT003', '1970-05-22', 5, true);
INSERT INTO patient (id, first_name, last_name, telephone_number, email, patient_number, date_of_birth, address_id, is_allergic) VALUES (4, 'Roksana', 'Perczak', '798 940 259', 'adawenzel@o2.pl', 'PAT004', '1973-09-15', 10, false);
INSERT INTO patient (id, first_name, last_name, telephone_number, email, patient_number, date_of_birth, address_id, is_allergic) VALUES (5, 'Jędrzej', 'Horbacz', '+48 732 659 176', 'skwiraantoni@fundacja.pl', 'PAT005', '1975-01-28', 9, true);

-- Visits
INSERT INTO visit (id, description, time, doctor_id, patient_id) VALUES (1, 'Wizyta_1', '2024-11-15 21:29:31', 7, 2);
INSERT INTO visit (id, description, time, doctor_id, patient_id) VALUES (2, 'Wizyta_2', '2024-10-19 21:29:31', 6, 1);
INSERT INTO visit (id, description, time, doctor_id, patient_id) VALUES (3, 'Wizyta_3', '2024-09-27 21:29:31', 3, 2);
INSERT INTO visit (id, description, time, doctor_id, patient_id) VALUES (4, 'Wizyta_4', '2024-10-23 21:29:31', 10, 3);
INSERT INTO visit (id, description, time, doctor_id, patient_id) VALUES (5, 'Wizyta_5', '2024-08-31 21:29:31', 7, 4);
INSERT INTO visit (id, description, time, doctor_id, patient_id) VALUES (6, 'Wizyta_6', '2024-10-07 21:29:31', 2, 5);
INSERT INTO visit (id, description, time, doctor_id, patient_id) VALUES (7, 'Wizyta_7', '2024-11-06 21:29:31', 6, 5);
INSERT INTO visit (id, description, time, doctor_id, patient_id) VALUES (8, 'Wizyta_8', '2024-08-28 21:29:31', 2, 4);
INSERT INTO visit (id, description, time, doctor_id, patient_id) VALUES (9, 'Wizyta_9', '2024-11-18 21:29:31', 4, 3);
INSERT INTO visit (id, description, time, doctor_id, patient_id) VALUES (10, 'Wizyta_10', '2024-08-25 21:29:31', 1, 5);
INSERT INTO visit (id, description, time, doctor_id, patient_id) VALUES (11, 'Wizyta_11', '2024-09-02 21:29:31', 5, 4);
INSERT INTO visit (id, description, time, doctor_id, patient_id) VALUES (12, 'Wizyta_12', '2024-09-29 21:29:31', 6, 3);
INSERT INTO visit (id, description, time, doctor_id, patient_id) VALUES (13, 'Wizyta_13', '2024-09-08 21:29:31', 3, 2);
INSERT INTO visit (id, description, time, doctor_id, patient_id) VALUES (14, 'Wizyta_14', '2024-10-12 21:29:31', 10, 1);
INSERT INTO visit (id, description, time, doctor_id, patient_id) VALUES (15, 'Wizyta_15', '2024-09-23 21:29:31', 8, 4);

-- MedicalTreatments
INSERT INTO medical_treatment (id, description, type, visit_id) VALUES (1, 'Leczenie_1', 'USG', 9);
INSERT INTO medical_treatment (id, description, type, visit_id) VALUES (2, 'Leczenie_2', 'EKG', 3);
INSERT INTO medical_treatment (id, description, type, visit_id) VALUES (3, 'Leczenie_3', 'USG', 4);
INSERT INTO medical_treatment (id, description, type, visit_id) VALUES (4, 'Leczenie_4', 'EKG', 15);
INSERT INTO medical_treatment (id, description, type, visit_id) VALUES (5, 'Leczenie_5', 'EKG', 14);
INSERT INTO medical_treatment (id, description, type, visit_id) VALUES (6, 'Leczenie_6', 'RTG', 7);
INSERT INTO medical_treatment (id, description, type, visit_id) VALUES (7, 'Leczenie_7', 'USG', 9);
INSERT INTO medical_treatment (id, description, type, visit_id) VALUES (8, 'Leczenie_8', 'RTG', 4);
INSERT INTO medical_treatment (id, description, type, visit_id) VALUES (9, 'Leczenie_9', 'USG', 5);
INSERT INTO medical_treatment (id, description, type, visit_id) VALUES (10, 'Leczenie_10', 'RTG', 1);
INSERT INTO medical_treatment (id, description, type, visit_id) VALUES (11, 'Leczenie_11', 'RTG', 2);
INSERT INTO medical_treatment (id, description, type, visit_id) VALUES (12, 'Leczenie_12', 'EKG', 13);
INSERT INTO medical_treatment (id, description, type, visit_id) VALUES (13, 'Leczenie_13', 'RTG', 5);
INSERT INTO medical_treatment (id, description, type, visit_id) VALUES (14, 'Leczenie_14', 'RTG', 8);
INSERT INTO medical_treatment (id, description, type, visit_id) VALUES (15, 'Leczenie_15', 'EKG', 4);
