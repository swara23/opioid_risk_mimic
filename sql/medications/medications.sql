SET search_path TO mimiciv_hosp;
-- medications.sql
-- Extract opioid-related prescriptions and pharmacy/EMAR details

-- 1. Prescriptions filtered for opioids
CREATE TABLE opioid_prescriptions AS
SELECT *
FROM prescriptions
WHERE LOWER(drug) LIKE '%morphine%'
   OR LOWER(drug) LIKE '%oxycodone%'
   OR LOWER(drug) LIKE '%hydrocodone%'
   OR LOWER(drug) LIKE '%hydromorphone%'
   OR LOWER(drug) LIKE '%fentanyl%'
   OR LOWER(drug) LIKE '%tramadol%'
   OR LOWER(drug) LIKE '%codeine%'
   OR LOWER(drug) LIKE '%buprenorphine%'
   OR LOWER(drug) LIKE '%methadone%'
   OR LOWER(drug) LIKE '%opium%';

-- 2. Pharmacy table
CREATE TABLE pharmacy AS
SELECT
    subject_id,
    hadm_id,
    pharmacy_id,
    medication,
    starttime,
    stoptime,
    route,
    infusion_type,
    doses_per_24_hrs,
    duration,
    fill_quantity
FROM pharmacy;

-- 3. EMAR (administration events)
CREATE TABLE emar AS
SELECT
    subject_id,
    hadm_id,
    emar_id,
    charttime,
    medication,
    event_txt
FROM emar;

-- 4. EMAR detail (dose-level info)
CREATE TABLE emar_detail AS
SELECT
    subject_id,
    emar_id,
    dose_given,
    dose_given_unit,
    route,
    infusion_rate
FROM emar_detail;
