SET search_path TO mimiciv_hosp;
-- drg.sql
-- Diagnosis-related group info

CREATE OR REPLACE TABLE drg AS
SELECT
    subject_id,
    hadm_id,
    drg_type,
    drg_code,
    description,
    drg_severity,
    drg_mortality
FROM drgcodes;
