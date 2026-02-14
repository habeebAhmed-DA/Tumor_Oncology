SELECT * FROM cancer_data.cancer_diagnosis_data;

SELECT distinct Survival_Status , count(Survival_Status)
FROM cancer_data.cancer_diagnosis_data
group by Survival_Status;

SELECT Tumor_Type  ,
CASE 
WHEN `Tumor_Size(cm)` <= 3 Then "Small"
WHEN `Tumor_Size(cm)` >= 3 and `Tumor_Size(cm)` <= 6 Then "Medium"
WHEN `Tumor_Size(cm)` >= 6 Then "Large"
End AS cat_size ,
Treatment , count(Survival_Status) as total_survive 
FROM cancer_data.cancer_diagnosis_data
group by Tumor_Type, cat_size ,Treatment
order by total_survive desc;

SELECT distinct Survival_Status , count(Survival_Status) , Response_to_Treatment
FROM cancer_data.cancer_diagnosis_data
where Response_to_Treatment = "Complete Response"
group by Survival_Status;

SELECT distinct Treatment , Survival_Status ,count(Survival_Status)
FROM cancer_data.cancer_diagnosis_data
where Survival_Status = "Survived"
group by Treatment, Survival_Status;
