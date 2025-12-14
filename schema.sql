
--<Part 2 – Schema Design & Table Creation>


-- 1. DEPARTMENT Table Creation

    CREATE TABLE Department (
        Deptcode VARCHAR(10) NOT NULL PRIMARY KEY,
        Deptlocation VARCHAR(100) NOT NULL
    );

-- 2. JOB Table Creation

    CREATE TABLE Job (
        job_id INT AUTO_INCREMENT PRIMARY KEY,
        jobName VARCHAR(100) NOT NULL UNIQUE
    );

-- 3. EMPLOYEES Table Creation

    CREATE TABLE Employees (
        
        Empno INT NOT NULL PRIMARY KEY, 

        name VARCHAR(200) NOT NULL,
        hiredate DATE,
        salary DECIMAL(10, 2),
        Deptcode VARCHAR(10) NOT NULL, 
        job_id INT,

        CONSTRAINT fk_Deptcode
            FOREIGN KEY (Deptcode) REFERENCES Department (Deptcode),
        
        CONSTRAINT fk_job_id
            FOREIGN KEY (job_id) REFERENCES Job (job_id)
    );