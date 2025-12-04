-- drg.sql
-- Diagnosis-related group info

CREATE TABLE drg AS
SELECT
    subject_id,
    hadm_id,
    drg_type,
    drg_code,
    description,
    drg_severity,
    drg_mortality
FROM mimiciv_hosp.drgcodes;
