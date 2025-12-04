SET search_path TO mimiciv_hosp;
-- cohort.sql
-- Build patient-admission cohort with demographics

CREATE TABLE cohort AS
SELECT
    a.subject_id,
    a.hadm_id,
    p.gender,
    p.anchor_age,
    p.anchor_year,
    p.anchor_year_group,
    p.dod,
    a.admittime,
    a.dischtime,
    a.deathtime,
    a.admission_type,
    a.admission_location,
    a.discharge_location,
    a.insurance,
    a.language,
    a.marital_status,
    a.race,
    a.hospital_expire_flag
FROM admissions a
INNER JOIN patients p
    ON a.subject_id = p.subject_id;
