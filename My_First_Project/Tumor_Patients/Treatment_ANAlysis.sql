SELECT * FROM cancer_data.cancer_diagnosis_data;

SELECT COUNT(Patient_ID) , Treatment
FROM cancer_data.cancer_diagnosis_data
Group by Treatment;

SELECT Avg(`Tumor_Size(cm)`) , Treatment
FROM cancer_data.cancer_diagnosis_data
Group by Treatment;

SELECT Treatment,COUNT(*) AS Patients
FROM cancer_data.cancer_diagnosis_data
WHERE `Tumor_Size(cm)` > 6
GROUP BY Treatment
ORDER BY Patients DESC
limit 1;

SELECT Tumor_Type, Treatment, COUNT(*) AS patient_count
FROM cancer_data.cancer_diagnosis_data
GROUP BY Tumor_Type, Treatment
ORDER BY Tumor_Type, patient_count DESC;