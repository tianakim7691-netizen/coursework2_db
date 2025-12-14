--<Part 4 – Required SQL Queries>

-- 1. Average and Total Salary
    SELECT AVG(Salary) AS Average_Salary, SUM(Salary) AS Total_Salary
    FROM Employees;

-- 2. Count Employees in a Department
    SELECT COUNT(Empno) AS Employee_Count_in_1A
    FROM Employees
    WHERE Deptcode = '1A';

-- 3. Name Pattern Search
    --names start with "c"/ at least 4 characters
    SELECT Name
    FROM Employees
    WHERE Name LIKE 'C%'  -- start with "c"/
    AND LENGTH(Name) >= 4; -- at least 4 characters

-- 4. Employees by Job Title
    SELECT Name, Empno,job_id
    FROM Employees
    WHERE job_id = (SELECT job_id FROM Job WHERE jobName = 'Design Engineer');

-- 5. Employees Hired Between Two Dates
    --find employees within the selected date
    SELECT Name, hire_date, Deptcode
    FROM Employees
    WHERE hire_date BETWEEN '2025-05-01' AND '2025-09-30'
    ORDER BY Name ASC;

-- 6. Min & Max Salary
    SELECT MIN(Salary) AS Minimum_Salary, MAX(Salary) AS Maximum_Salary
    FROM Employees;

-- 7. Earliest & Latest Hire Date
    SELECT MIN(hire_date) AS Earliest_Hire_Date, MAX(hire_date) AS Latest_Hire_Date
    FROM Employees;

-- 8. Employee Count per Department
    SELECT D.Deptlocation AS Department_Name, COUNT(E.Empno) AS Employee_Count
    FROM Employees E
    INNER JOIN Department D ON E.Deptcode = D.Deptcode
    GROUP BY D.Deptlocation
    ORDER BY  Employee_Count DESC;
    
-- 9. Average Salary per Department
    --D.=>Alias/ INNER JOIN =true in two condition
    SELECT D.Deptlocation AS Department_Name, AVG(E.salary) AS Average_Salary
    FROM Employees E
    INNER JOIN Department D ON E.Deptcode = D.Deptcode
    GROUP BY D.Deptlocation
    ORDER BY Average_Salary DESC;

-- 10. High-Salary Departments (only over 100000 Deptlocation)
    SELECT D.Deptlocation AS Department_Name, SUM(E.salary) AS Total_Department_Salary
    FROM Employees E
    INNER JOIN Department D ON E.Deptcode = D.Deptcode
    GROUP BY D.Deptlocation
    HAVING SUM(E.salary) > 100000.00; --HAVING" use results value of GROUP by

-- 11. Employees in a Location
    SELECT E.Name, E.Empno, D.Deptlocation
    FROM Employees E
    INNER JOIN Department D ON E.Deptcode = D.Deptcode
    WHERE D.Deptlocation = 'Texas';

-- 12. Total Salary by Department & Job Title (Multi-level GROUP BY)
    SELECT D.Deptlocation AS Department_Name, J.jobName AS Job_Title, SUM(E.Salary) AS Total_Salary_Grouped
    FROM Employees E --Sets the primary source of employee data.
    INNER JOIN Department D ON E.Deptcode = D.Deptcode 
    INNER JOIN Job J ON E.job_id = J.job_id
    GROUP BY D.Deptlocation, J.jobName
    ORDER BY Total_Salary_Grouped DESC;