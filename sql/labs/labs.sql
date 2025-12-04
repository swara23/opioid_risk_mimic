SET search_path TO mimiciv_hosp;
-- labs.sql
-- Extract lab events

CREATE OR REPLACE TABLE labs AS
SELECT
    subject_id,
    hadm_id,
    itemid,
    charttime,
    valuenum,
    valueuom,
    flag
FROM labevents
WHERE valuenum IS NOT NULL;
