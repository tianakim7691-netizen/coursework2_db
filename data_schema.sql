
DROP TABLE IF EXISTS Employees;
DROP TABLE IF EXISTS Job;
DROP TABLE IF EXISTS Department;


CREATE TABLE Department (
    Deptcode VARCHAR(10) NOT NULL PRIMARY KEY,
    Deptlocation VARCHAR(100) NOT NULL
);

CREATE TABLE Job (
    job_id INT AUTO_INCREMENT PRIMARY KEY,
    jobName VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE Employees (
    Empno INT NOT NULL PRIMARY KEY,
    Name VARCHAR(200) NOT NULL,
    hire_date DATE,
    salary DECIMAL(10,2),
    Deptcode VARCHAR(10) NOT NULL,
    job_id INT,
    CONSTRAINT fk_Deptcode FOREIGN KEY (Deptcode) REFERENCES Department (Deptcode),
    CONSTRAINT fk_job_id FOREIGN KEY (job_id) REFERENCES Job (job_id)
);


-- 2-1. DEPARTMENT
INSERT INTO Department (Deptcode, Deptlocation) VALUES 
('3C', 'Texas'),
('11K', 'North Carolina'),
('21U', 'Kansas'),
('8H', 'Manitoba'),
('13M', 'Arizona'),
('1A', 'Kansas'),
('5E', 'New Brunswick'),
('15O', 'Illinois'),
('2B', 'Labrador'),
('28BB', 'Texas'),
('24X', 'Washington'),
('30DD', 'Ontario'),
('29CC', 'Quebec'),
('10J', 'Texas'),
('14N', 'Nunavut'),
('22V', 'Alabama'),
('18R', 'Missouri'),
('19S', 'Yukon'),
('9I', 'Yukon'),
('27AA', 'Pennsylvania'),
('4D', 'California'),
('6F', 'Oregon'),
('7G', 'Utah'),
('12L', 'Nevada'),
('16P', 'Quebec'),
('17Q', 'Nebraska'),
('20T', 'Quebec'),
('23W', 'Mississippi'),
('25Y', 'Yukon'),
('26Z', 'Delaware'),
('27A1', 'Pennsylvania');

-- 2-2. JOB
INSERT INTO Job (job_id, jobName) VALUES 
(1, 'Cost Accountant'),
(2, 'System Analyst'),
(3, 'Software Engineer'),
(4, 'Chemical Engineer'),
(5, 'Graphic Designer'),
(6, 'Librarian'),
(7, 'Sales Associate'),
(8, 'Administrative Assistant II'),
(9, 'Project Coordinator'),
(10, 'Marketing Assistant'),
(11, 'Senior Editor'),
(12, 'Analog Circuit Design Manager'),
(13, 'Recruiting Manager'),
(14, 'Human Resources Specialist'),
(15, 'Financial Manager'),
(16, 'Payment Adjustment Coordinator'),
(17, 'Customer Service Rep'),
(18, 'Safety Inspector'),
(19, 'VP Product Management'),
(20, 'Electrician'),
(21, 'Chef'),
(22, 'Developer IV'),
(23, 'Security Guard'),
(24, 'Help Desk Operator'),
(25, 'Automation Specialist II'),
(26, 'Assistant Media Planner'),
(27, 'Pilot'),
(28, 'Design Engineer'),
(29, 'Research Nurse'),
(30, 'Security Guard II'); -- 중복이 있어서 새 이름 지정

-- 2-3. EMPLOYEES
INSERT INTO Employees (Empno, Name, hire_date, salary, Deptcode, job_id) VALUES 
(1001, 'Nikolai Peartree', '2025-07-26', 62246.00, '15O', 7),
(1002, 'Bernice Carroll', '2025-08-22', 51719.40, '19S', 10),
(1003, 'Clarey Matous', '2025-10-17', 116483.00, '1A', 22),
(1004, 'Gustaf Brognot', '2025-11-14', 85572.00, '8H', 22),
(1005, 'Michaeline Reymers', '2025-10-13', 33610.50, '29CC', 25),
(1006, 'Mellicent Gedling', '2025-03-29', 113967.00, '6F', 29),
(1007, 'Katti MacFadzan', '2025-01-19', 146589.50, '10J', 7),
(1009, 'Nevin Ozanne', '2025-01-03', 77389.20, '19S', 28),
(1010, 'Karee Di Biasi', '2025-12-08', 127013.50, '9I', 5),
(1011, 'Wenona Rablin', '2025-09-18', 124996.00, '5E', 4),
(1012, 'Tiphany Goodlett', '2025-11-14', 60666.70, '13M', 19),
(1014, 'Chadd Bonafant', '2025-09-06', 93046.00, '19S', 13),
(1016, 'Cati Outhwaite', '2025-06-08', 91173.00, '11K', 4),
(1022, 'Astrid Whitehead', '2025-06-30', 141348.30, '10J', 4),
(1023, 'Dorelia Keoghan', '2025-05-28', 128765.50, '3C', 26),
(1024, 'Mariejeanne Ezzell', '2025-06-02', 75615.00, '21U', 11),
(1026, 'Virge Plaschke', '2025-03-04', 39417.00, '1A', 1),
(1027, 'Cassondra Seth', '2025-11-09', 100859.50, '30DD', 16),
(1030, 'Myrwyn Tumility', '2025-03-23', 81128.50, '20T', 8),
(1031, 'Chad Jeromson', '2025-08-26', 124677.50, '13M', 19),
(1032, 'Lise Parlor', '2025-01-25', 57928.50, '24X', 4),
(1033, 'Filmer Kilshall', '2025-03-13', 118964.30, '29CC', 7),
(1034, 'Neilla Sweedland', '2025-02-03', 53510.20, '30DD', 4),
(1035, 'Derron Kenrack', '2025-07-26', 86375.50, '27AA', 12),
(1036, 'Aubry Keoghan', '2025-02-17', 103384.00, '10J', 8),
(1037, 'Junina Tomankowski', '2025-10-07', 99739.00, '22V', 12),
(1038, 'Aloysius Casement', '2025-11-22', 65872.00, '14N', 29),
(1039, 'Meris Haquard', '2025-05-12', 44426.00, '7G', 28),
(1040, 'Hewitt Arlett', '2025-09-18', 43085.00, '12L', 13),
(1041, 'Jayne Godspede', '2025-05-02', 100920.00, '22V', 28);


-- Department
SELECT Deptcode, Deptlocation FROM Department;
SELECT Deptcode FROM Department WHERE Deptlocation = 'Texas';

-- Job
SELECT jobName FROM Job ORDER BY jobName ASC;
SELECT job_id FROM Job WHERE jobName = 'Research Nurse';

-- Employees
SELECT Name, salary FROM Employees WHERE salary >= 116483.00;
SELECT Name, hire_date FROM Employees WHERE Deptcode = '1A' ORDER BY hire_date ASC;
