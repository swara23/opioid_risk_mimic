SET search_path TO mimiciv_hosp;
-- medications.sql
-- Extract opioid-related prescriptions and pharmacy/EMAR details

-- 1. Prescriptions filtered for opioids
CREATE TABLE mimiciv_hosp.pharmacy AS
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
FROM mimiciv_hosp.pharmacy;

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
