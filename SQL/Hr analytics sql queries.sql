-- 1. Total number of employees
SELECT COUNT(*) AS total_employees
FROM hr_analytics;
-- 2. Gender distribution
SELECT Gender, COUNT(*) AS count
FROM hr_analytics
GROUP BY Gender;
-- 3. Department-wise employee count
SELECT Department, COUNT(*) AS employees
FROM hr_analytics
GROUP BY Department
ORDER BY employees DESC;
-- 4. Average salary by department
SELECT Department, ROUND(AVG(Salary), 2) AS avg_salary
FROM hr_analytics
GROUP BY Department
ORDER BY avg_salary DESC;
-- 5. Top 10 highest-paid employees
SELECT EmployeeID, JobRole, Salary
FROM hr_analytics
ORDER BY Salary DESC
LIMIT 10;
-- 6. Salary vs Attrition
SELECT Attrition, ROUND(AVG(Salary), 2) AS avg_salary
FROM hr_analytics
GROUP BY Attrition;
-- 7. Total attrition count
SELECT COUNT(*) AS attrition_count
FROM hr_analytics
WHERE Attrition = 'Yes';
-- 8. Attrition percentage
SELECT 
    ROUND( (SUM(CASE WHEN Attrition='Yes' THEN 1 END) * 100.0) / COUNT(*), 2 ) 
    AS attrition_rate
FROM hr_analytics;
-- 9. Attrition by department
SELECT Department, 
       COUNT(*) AS total_emp,
       SUM(CASE WHEN Attrition='Yes' THEN 1 END) AS attrition_count,
       ROUND(SUM(CASE WHEN Attrition='Yes' THEN 1 END) * 100.0 / COUNT(*), 2) AS attrition_rate
FROM hr_analytics
GROUP BY Department
ORDER BY attrition_rate DESC;
-- 10. Attrition by Job Role
SELECT JobRole,
       COUNT(*) AS total,
       SUM(CASE WHEN Attrition='Yes' THEN 1 END) AS attrition_count
FROM hr_analytics
GROUP BY JobRole
ORDER BY attrition_count DESC;
-- 11. Average Job Satisfaction by Department
SELECT Department,
       ROUND(AVG(JobSatisfaction), 2) AS avg_satisfaction
FROM hr_analytics
GROUP BY Department;
-- 12. Job Satisfaction vs Attrition
SELECT JobSatisfaction,
       COUNT(*) AS employees,
       SUM(CASE WHEN Attrition='Yes' THEN 1 END) AS attrition_count
FROM hr_analytics
GROUP BY JobSatisfaction
ORDER BY JobSatisfaction;
-- 13. Overtime impact on attrition
SELECT Overtime,
       COUNT(*) AS employees,
       SUM(CASE WHEN Attrition='Yes' THEN 1 END) AS attrition_count
FROM hr_analytics
GROUP BY Overtime;
-- 14. Remote work distribution
SELECT RemoteWork, COUNT(*) AS employees
FROM hr_analytics
GROUP BY RemoteWork;
-- 15. Attrition among remote vs non-remote employees
SELECT RemoteWork,
       SUM(CASE WHEN Attrition='Yes' THEN 1 END) AS attrition_count
FROM hr_analytics
GROUP BY RemoteWork;
-- 16. Average years in company by attrition
SELECT Attrition, ROUND(AVG(YearsAtCompany), 2) AS avg_years
FROM hr_analytics
GROUP BY Attrition;
-- 17. Promotion history impact
SELECT YearsSinceLastPromotion,
       COUNT(*) AS employees,
       SUM(CASE WHEN Attrition='Yes' THEN 1 END) AS attrition_count
FROM hr_analytics
GROUP BY YearsSinceLastPromotion
ORDER BY YearsSinceLastPromotion;
-- 18. Bonus vs Attrition
SELECT Attrition,
       ROUND(AVG(Bonus), 2) AS avg_bonus
FROM hr_analytics
GROUP BY Attrition;
-- 19. Performance rating distribution
SELECT PerformanceRating,
       COUNT(*) AS employees
FROM hr_analytics
GROUP BY PerformanceRating;
-- 20. Complete HR KPI Summary (Attrition + Salary + Tenure)
SELECT 
    COUNT(*) AS total_employees,
    SUM(CASE WHEN Attrition='Yes' THEN 1 END) AS attrition_count,
    ROUND(SUM(CASE WHEN Attrition='Yes' THEN 1 END) * 100.0 / COUNT(*), 2) AS attrition_rate,
    ROUND(AVG(Salary), 2) AS avg_salary,
    ROUND(AVG(YearsAtCompany), 2) AS avg_tenure
FROM hr_analytics;

















