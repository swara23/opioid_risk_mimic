Structured Machine Learning and Natural-Language Processing Analysis of Opioid Use

Repo that reproduces the structured machine learning and natural-language processing used to analyze the MIMIC IV dataset to identify risk factors for top 10th percentile of opioid use in patients. Code written by Swara Kale.

Repo Structure
src/data_extraction/: extract structured EHR data and clinical notes from MIMIC-IV
src/preprocessing/: cleaning, tokenizing, and defining patient cohorts
src/feature_engineering/: generate structured features and note embeddings using BioClinicalBERT
src/modeling/: train XGBoost, BioClinicalBERT, and multimodal fusion models
src/evaluation/: model evaluation (ROC/PR curves, calibration, SHAP, and DCA)
src/external_validation/: scripts to run external validation on the eICU dataset
src/utils/: utility functions for logging, I/O, seeding, and reproducibility
notebooks/: exploratory and modeling Jupyter notebooks demonstrating pipeline execution
figures/: output folder for calibration curves, ROC/PR curves, SHAP plots, and attention maps
logs/: output folder for training and evaluation logs
docker/: Dockerfile for creating a reproducible computational environment
environment.yml: Conda environment specification for reproducibility
setup_instructions.md: instructions to run the analysis pipeline

Notes on Reproduction
Datasets
Datasets are provided by outside sources, and must be downloaded externally to reproduce results. Three datasets are used in this work: MIMIC-IV version 3.1, MIMIC-IV-Note version 2.2, and the eICU Collaborative Research Database (CRD) version 2.0. The .Rmd script contains the necessary code to prepare the data for analysis.

MIMIC Databases
Data has been download from PhysioNet. Both MIMIC databases (DB) are relational DB structured in tables. Documentation about the DB schema can be found on the MIMIC site. Data access requires Data Use Agreement with PhysioNet.

eICU-CRD
Data has been download from PhysioNet. Documentation about the DB schema can be found on the eICU-CRD site. Data access requires Data Use Agreement with PhysioNet.
