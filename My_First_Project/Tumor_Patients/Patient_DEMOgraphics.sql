SELECT * FROM cancer_data.cancer_diagnosis_data;

SELECT count(Patient_ID) 
FROM cancer_diagnosis_data;

SELECT MIN(Age) , MAX(Age), AVG(Age) 
FROM cancer_diagnosis_data;

SELECT Gender , Count(Patient_ID)
FROM cancer_diagnosis_data
group by Gender;

SELECT Gender, CASE
When Age <= 20 Then "-20"
When Age >= 21 and Age <= 30 Then "21-30"
When Age >= 31 and Age <= 40 Then "31-40"
When Age >= 41 and Age <= 50 Then "41-50"
When Age >= 51 and Age <= 60 Then "51-60"
When Age >= 61 and Age <= 70 Then "61-70"
When Age >= 71 and Age <= 80 Then "71-80"
When Age >= 81 Then "81+"
END as age_distribution,
Count(Age) as total_age_dis
FROM cancer_diagnosis_data
group by Gender , age_distribution
order by Gender , age_distribution asc;
