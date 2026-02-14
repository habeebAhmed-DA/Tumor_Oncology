SELECT * FROM cancer_data.cancer_diagnosis_data;

SELECT Response_to_Treatment , count(Response_to_Treatment)
from cancer_diagnosis_data
group by Response_to_Treatment;

SELECT Treatment, Response_to_Treatment , count(Response_to_Treatment) as total_comp_res
from cancer_diagnosis_data
where Response_to_Treatment = "Complete Response"
group by Treatment, Response_to_Treatment
order by total_comp_res desc;

SELECT Response_to_Treatment, Tumor_Type , COUNT(Response_to_Treatment)
from cancer_diagnosis_data
group by Tumor_Type ,Response_to_Treatment
order by Tumor_Type ,Response_to_Treatment;

SELECT Response_to_Treatment ,COUNT(*) as patients_count,
CASE 
WHEN `Tumor_Size(cm)` <= 3 Then "Small"
WHEN `Tumor_Size(cm)` >= 3 and `Tumor_Size(cm)` <= 6 Then "Medium"
WHEN `Tumor_Size(cm)` >= 6 Then "Large"
End AS cat_size 
from cancer_diagnosis_data
group by cat_size ,Response_to_Treatment
order by patients_count , cat_size asc ;