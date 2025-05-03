SELECT 
    TIME(Start_time) AS Start_Time_Slot,
    TIME(End_time) AS End_Time_Slot,
    Timezone,
    COUNT(*) AS Total_Attendance,
    AVG(Final_score) AS Avg_Final_Score,
    AVG(Score_Concept) AS Avg_Concept_Score,
    AVG(Score_Interesting) AS Avg_Interesting_Score
FROM 
    student_details
WHERE 
    Attended = 'Yes'
GROUP BY 
    Start_Time_Slot, End_Time_Slot, Timezone
ORDER BY 
    Total_Attendance DESC, Avg_Final_Score DESC;