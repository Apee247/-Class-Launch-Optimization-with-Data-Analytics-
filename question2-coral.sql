SELECT 
    Topics,
    COUNT(*) AS Total_Classes,
    AVG(Score_Concept) AS Avg_Concept_Score,
    AVG(Score_Interesting) AS Avg_Interesting_Score,
    AVG(Final_score) AS Avg_Final_Score,
    SUM(CASE WHEN Attended = 'Yes' THEN 1 ELSE 0 END) AS Total_Attendance
FROM 
    student_details
GROUP BY 
    Topics
ORDER BY 
    Avg_Final_Score DESC, Total_Attendance DESC;