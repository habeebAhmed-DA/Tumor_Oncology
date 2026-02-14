SELECT * FROM cancer_data.cancer_diagnosis_data;

SELECT AVG(`Tumor_Size(cm)`) AS avg_tumor_size
FROM cancer_data.cancer_diagnosis_data;

SELECT AVG(`Tumor_Size(cm)`) , Tumor_Type
FROM cancer_data.cancer_diagnosis_data
group by Tumor_Type;

SELECT COUNT(Tumor_Type), Tumor_Type
FROM cancer_data.cancer_diagnosis_data
group by Tumor_Type;


SELECT COUNT(*) AS patients_above_5cm
FROM cancer_data.cancer_diagnosis_data
WHERE `tumor_size(cm)` > 5;

Select COUNT(Patient_ID) ,
CASE
WHEN `Tumor_Size(cm)` <= 3 Then "Small"
WHEN `Tumor_Size(cm)` >= 3 and `Tumor_Size(cm)` <= 6 Then "Medium"
WHEN `Tumor_Size(cm)` >= 6 Then "Large"
End as categorized_size
From cancer_diagnosis_data
group by categorized_size;