-- labs.sql
-- Extract lab events

CREATE TABLE labs AS
SELECT
    subject_id,
    hadm_id,
    itemid,
    charttime,
    valuenum,
    valueuom,
    flag
FROM mimiciv_hosp.labevents
WHERE valuenum IS NOT NULL;
