CREATE TABLE faculty (
                         faculty_id   INTEGER NOT NULL AUTO_INCREMENT,
                         faculty_name VARCHAR(45) NULL,
                         number_of_applicant VARCHAR(45) NULL,
                         PRIMARY KEY (faculty_id)
);

CREATE TABLE applicant (
                           applicant_id    INTEGER NOT NULL AUTO_INCREMENT,
                           firstname VARCHAR(45) NULL,
                           lastname  VARCHAR(45) NULL,
                           faculty_id   INTEGER NOT NULL,
                           mark    DECIMAL(3,0) NOT NULL DEFAULT 0,
                           date_application DATE NOT NULL,
                           PRIMARY KEY (applicant_id),
                           CONSTRAINT applicant_to_faculty_fk
                               FOREIGN KEY (faculty_id)
                                   REFERENCES faculty (faculty_id)
                                   ON DELETE NO ACTION
                                   ON UPDATE NO ACTION
);