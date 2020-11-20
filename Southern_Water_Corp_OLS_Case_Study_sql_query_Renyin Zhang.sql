SELECT 
	Status
	,Reason
	,Year(Start_Time) AS Year
	,ROUND(AVG(Outage_MW),2) AS Avg_Outage_MW_Loss
	,ROUND(SUM(Outage_MW),2) AS Sum_Outage_MW_Loss
FROM 
	AEMR
WHERE 
	Status='Approved' 
GROUP BY 
	Status
	,Reason
	,Year(Start_Time)
ORDER BY 
	Year(Start_Time)
	,Reason
