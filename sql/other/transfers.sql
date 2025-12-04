-- transfers.sql
-- ICU and transfer events

CREATE TABLE transfers AS
SELECT
    subject_id,
    hadm_id,
    transfer_id,
    eventtype,
    careunit,
    intime,
    outtime
FROM mimiciv_hosp.transfers;
