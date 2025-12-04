SET search_path TO mimiciv_hosp;
-- transfers.sql
-- ICU and transfer events

CREATE OR REPLACE TABLE transfers AS
SELECT
    subject_id,
    hadm_id,
    transfer_id,
    eventtype,
    careunit,
    intime,
    outtime
FROM transfers;
