SELECT * FROM cancer_data.cancer_diagnosis_data;

SELECT Count(Biopsy_Result), Biopsy_Result
FROM cancer_data.cancer_diagnosis_data
Group by Biopsy_Result;

SELECT Tumor_Type , Biopsy_Result,Count(Biopsy_Result)
FROM cancer_diagnosis_data
Group by Tumor_Type , Biopsy_Result;
