-- services.sql
-- Service changes during stay

CREATE TABLE services AS
SELECT
    subject_id,
    hadm_id,
    transfertime,
    prev_service,
    curr_service
FROM mimiciv_hosp.services;
