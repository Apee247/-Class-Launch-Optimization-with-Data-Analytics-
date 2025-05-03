SELECT 
    Teacher_Name,
    Class_name,
    Topics,
    AVG(Score_Concept) AS Avg_Concept_Score,
    AVG(Score_Interesting) AS Avg_Interesting_Score,
    AVG(Final_score) AS Avg_Final_Score,
    COUNT(*) AS Total_Attendance
FROM 
    student_details
WHERE 
    Attended = 'Yes'
GROUP BY 
    Teacher_Name, Class_name, Topics
ORDER BY 
Total_Attendance DESC;