SET search_path TO mimiciv_hosp;
-- services.sql
-- Service changes during stay

CREATE OR REPLACE TABLE services AS
SELECT
    subject_id,
    hadm_id,
    transfertime,
    prev_service,
    curr_service
FROM services;
