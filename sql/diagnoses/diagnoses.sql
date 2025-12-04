-- diagnoses.sql
-- Extract ICD codes with labels

CREATE TABLE diagnoses AS
SELECT
    di.subject_id,
    di.hadm_id,
    di.icd_code,
    di.icd_version,
    di.seq_num,
    dd.long_title
FROM mimiciv_hosp.diagnoses_icd di
LEFT JOIN mimiciv_hosp.d_icd_diagnoses dd
    ON di.icd_code = dd.icd_code
   AND di.icd_version = dd.icd_version;
