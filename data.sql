
-- <Part 3: Data Insertion>

-- 1. DEPARTMENT (Parents)
INSERT INTO Department (Deptcode, Deptlocation) VALUES ('3C', 'Texas');
INSERT INTO Department (Deptcode, Deptlocation) VALUES ('11K', 'North Carolina');
INSERT INTO Department (Deptcode, Deptlocation) VALUES ('21U', 'Florida');
INSERT INTO Department (Deptcode, Deptlocation) VALUES ('8H', 'Manitoba');
INSERT INTO Department (Deptcode, Deptlocation) VALUES ('13M', 'Arizona');
INSERT INTO Department (Deptcode, Deptlocation) VALUES ('1A', 'Newfoundland');
INSERT INTO Department (Deptcode, Deptlocation) VALUES ('5E', 'New Brunswick');
INSERT INTO Department (Deptcode, Deptlocation) VALUES ('15O', 'Illinois');
INSERT INTO Department (Deptcode, Deptlocation) VALUES ('2B', 'Labrador');
INSERT INTO Department (Deptcode, Deptlocation) VALUES ('28BB', 'Virginia');
INSERT INTO Department (Deptcode, Deptlocation) VALUES ('24X', 'Washington');
INSERT INTO Department (Deptcode, Deptlocation) VALUES ('30DD', 'Ontario');
INSERT INTO Department (Deptcode, Deptlocation) VALUES ('29CC', 'Quebec');
INSERT INTO Department (Deptcode, Deptlocation) VALUES ('10J', 'Connecticut');
INSERT INTO Department (Deptcode, Deptlocation) VALUES ('14N', 'Nunavut');
INSERT INTO Department (Deptcode, Deptlocation) VALUES ('22V', 'Alabama');
INSERT INTO Department (Deptcode, Deptlocation) VALUES ('18R', 'Missouri');
INSERT INTO Department (Deptcode, Deptlocation) VALUES ('19S', 'Yukon');
INSERT INTO Department (Deptcode, Deptlocation) VALUES ('9I', 'New York');
INSERT INTO Department (Deptcode, Deptlocation) VALUES ('27AA', 'Pennsylvania');
INSERT INTO Department (Deptcode, Deptlocation) VALUES ('4D', 'California');
INSERT INTO Department (Deptcode, Deptlocation) VALUES ('6F', 'Oregon');
INSERT INTO Department (Deptcode, Deptlocation) VALUES ('7G', 'Utah');
INSERT INTO Department (Deptcode, Deptlocation) VALUES ('12L', 'Nevada');
INSERT INTO Department (Deptcode, Deptlocation) VALUES ('16P', 'Kansas');
INSERT INTO Department (Deptcode, Deptlocation) VALUES ('17Q', 'Nebraska');
INSERT INTO Department (Deptcode, Deptlocation) VALUES ('20T', 'Oklahoma');
INSERT INTO Department (Deptcode, Deptlocation) VALUES ('23W', 'Mississippi');
INSERT INTO Department (Deptcode, Deptlocation) VALUES ('25Y', 'Maryland');
INSERT INTO Department (Deptcode, Deptlocation) VALUES ('26Z', 'Delaware');
INSERT INTO Department (Deptcode, Deptlocation) VALUES ('27AA', 'Pennsylvania');


-- 2. JOB (Parents)
INSERT INTO Job (job_id, jobName) VALUES (30, 'Research Nurse');
INSERT INTO Job (job_id, jobName) VALUES (28, 'Design Engineer');
INSERT INTO Job (job_id, jobName) VALUES (19, 'VP Product Management');
INSERT INTO Job (job_id, jobName) VALUES (1, 'Cost Accountant');
INSERT INTO Job (job_id, jobName) VALUES (7, 'Librarian'); 
INSERT INTO Job (job_id, jobName) VALUES (14, 'Analog Circuit Design Manager');
INSERT INTO Job (job_id, jobName) VALUES (13, 'Recruiting Manager');
INSERT INTO Job (job_id, jobName) VALUES (6, 'Graphic Designer');
INSERT INTO Job (job_id, jobName) VALUES (10, 'Administrative Assistant II');
INSERT INTO Job (job_id, jobName) VALUES (8, 'Sales Associate');
INSERT INTO Job (job_id, jobName) VALUES (4, 'Chemical Engineer');
INSERT INTO Job (job_id, jobName) VALUES (27, 'Assistant Media Planner');
INSERT INTO Job (job_id, jobName) VALUES (22, 'Developer IV');
INSERT INTO Job (job_id, jobName) VALUES (26, 'Automation Specialist II');
INSERT INTO Job (job_id, jobName) VALUES (12, 'Senior Editor');
INSERT INTO Job (job_id, jobName) VALUES (17, 'Payment Adjustment Coordinator');
INSERT INTO Job (job_id, jobName) VALUES (25, 'Help Desk Operator');
INSERT INTO Job (job_id, jobName) VALUES (2, 'System Analyst');
INSERT INTO Job (job_id, jobName) VALUES (3, 'Software Engineer');
INSERT INTO Job (job_id, jobName) VALUES (7, 'Database Administrator');
INSERT INTO Job (job_id, jobName) VALUES (9, 'Project Coordinator');
INSERT INTO Job (job_id, jobName) VALUES (11, 'Marketing Assistant');
INSERT INTO Job (job_id, jobName) VALUES (15, 'Human Resources Specialist');
INSERT INTO Job (job_id, jobName) VALUES (16, 'Financial Manager');
INSERT INTO Job (job_id, jobName) VALUES (18, 'Customer Service Rep');
INSERT INTO Job (job_id, jobName) VALUES (20, 'Safety Inspector');
INSERT INTO Job (job_id, jobName) VALUES (21, 'Electrician');
INSERT INTO Job (job_id, jobName) VALUES (23, 'Chef');
INSERT INTO Job (job_id, jobName) VALUES (24, 'Security Guard');
INSERT INTO Job (job_id, jobName) VALUES (29, 'Pilot');


-- 3. EMPLOYEES (Child)

INSERT INTO Employees (Empno, Name, hire_date, salary, Deptcode, job_id) VALUES (1003, 'Clarey Matous', '2025-10-17', 116483.00, '1A', 22);
INSERT INTO Employees (Empno, Name, hire_date, salary, Deptcode, job_id) VALUES (1009, 'Nevin Ozanne', '2025-01-03', 77389.20, '19S', 28);
INSERT INTO Employees (Empno, Name, hire_date, salary, Deptcode, job_id) VALUES (1023, 'Dorelia Keoghan', '2025-05-28', 128765.50, '3C', 27);
INSERT INTO Employees (Empno, Name, hire_date, salary, Deptcode, job_id) VALUES (1012, 'Tiphany Goodlett', '2025-11-14', 60666.70, '13M', 19);
INSERT INTO Employees (Empno, Name, hire_date, salary, Deptcode, job_id) VALUES (1027, 'Cassondra Seth', '2025-11-09', 100859.50, '30DD', 17);
INSERT INTO Employees (Empno, Name, hire_date, salary, Deptcode, job_id) VALUES (1024, 'Mariejeanne Ezzell', '2025-06-02', 75615.00, '21U', 12);
INSERT INTO Employees (Empno, Name, hire_date, salary, Deptcode, job_id) VALUES (1006, 'Mellicent Gedling', '2025-03-29', 113967.00, '6F', 30);
INSERT INTO Employees (Empno, Name, hire_date, salary, Deptcode, job_id) VALUES (1001, 'Nikolai Peartree', '2025-07-26', 62246.00, '15O', 8);
INSERT INTO Employees (Empno, Name, hire_date, salary, Deptcode, job_id) VALUES (1011, 'Wenona Rablin', '2025-09-18', 124996.00, '5E', 4);
INSERT INTO Employees (Empno, Name, hire_date, salary, Deptcode, job_id) VALUES (1010, 'Karee Di Biasi', '2025-12-08', 127013.50, '9I', 5);
INSERT INTO Employees (Empno, Name, hire_date, salary, Deptcode, job_id) VALUES (1030, 'Myrwyn Tumility', '2025-03-23', 81128.50, '20T', 10);
INSERT INTO Employees (Empno, Name, hire_date, salary, Deptcode, job_id) VALUES (1007, 'Katti MacFadzan', '2025-01-19', 146589.50, '10J', 8);
INSERT INTO Employees (Empno, Name, hire_date, salary, Deptcode, job_id) VALUES (1011, 'Chad Jeromson', '2025-08-26', 124677.50, '13M', 19);
INSERT INTO Employees (Empno, Name, hire_date, salary, Deptcode, job_id) VALUES (1005, 'Michaeline Reymers', '2025-10-13', 33610.50, '29CC', 26);
INSERT INTO Employees (Empno, Name, hire_date, salary, Deptcode, job_id) VALUES (1003, 'Lise Parlor', '2025-01-25', 57928.50, '24X', 4);
INSERT INTO Employees (Empno, Name, hire_date, salary, Deptcode, job_id) VALUES (1002, 'Bernice Carroll', '2025-08-22', 51719.40, '19S', 10);
INSERT INTO Employees (Empno, Name, hire_date, salary, Deptcode, job_id) VALUES (1014, 'Chadd Bonafant', '2025-09-06', 93046.00, '19S', 13);
INSERT INTO Employees (Empno, Name, hire_date, salary, Deptcode, job_id) VALUES (1023, 'Filmer Kilshall', '2025-03-13', 118964.30, '29CC', 8);
INSERT INTO Employees (Empno, Name, hire_date, salary, Deptcode, job_id) VALUES (1011, 'Neilla Sweedland', '2025-02-03', 53510.20, '30DD', 4);
INSERT INTO Employees (Empno, Name, hire_date, salary, Deptcode, job_id) VALUES (1022, 'Astrid Whitehead', '2025-06-30', 141348.30, '10J', 4);
INSERT INTO Employees (Empno, Name, hire_date, salary, Deptcode, job_id) VALUES (1022, 'Derron Kenrack', '2025-07-26', 86375.50, '27AA', 14);
INSERT INTO Employees (Empno, Name, hire_date, salary, Deptcode, job_id) VALUES (1026, 'Virge Plaschke', '2025-03-04', 39417.00, '1A', 1);
INSERT INTO Employees (Empno, Name, hire_date, salary, Deptcode, job_id) VALUES (1007, 'Aubry Keoghan', '2025-02-17', 103384.00, '10J', 10);
INSERT INTO Employees (Empno, Name, hire_date, salary, Deptcode, job_id) VALUES (1009, 'Junina Tomankowski', '2025-10-07', 99739.00, '22V', 14);
INSERT INTO Employees (Empno, Name, hire_date, salary, Deptcode, job_id) VALUES (1004, 'Gustaf Brognot', '2025-11-14', 85572.00, '8H', 22);
INSERT INTO Employees (Empno, Name, hire_date, salary, Deptcode, job_id) VALUES (1009, 'Aloysius Casement', '2025-11-22', 65872.00, '14N', 30);
INSERT INTO Employees (Empno, Name, hire_date, salary, Deptcode, job_id) VALUES (1009, 'Meris Haquard', '2025-05-12', 44426.00, '7G', 28);
INSERT INTO Employees (Empno, Name, hire_date, salary, Deptcode, job_id) VALUES (1006, 'Hewitt Arlett', '2025-09-18', 43085.00, '12L', 13);
INSERT INTO Employees (Empno, Name, hire_date, salary, Deptcode, job_id) VALUES (1011, 'Jayne Godspede', '2025-05-02', 100920.00, '22V', 28);
INSERT INTO Employees (Empno, Name, hire_date, salary, Deptcode, job_id) VALUES (1016, 'Cati Outhwaite', '2025-06-08', 91173.00, '11K', 4);



-- 1. DEPARTMENT quary

SELECT Deptcode, Deptlocation FROM Department;
SELECT Deptcode FROM Department WHERE Deptlocation = 'Texas';

-- 2. JOB 테이블 quary
SELECT jobName FROM Job ORDER BY jobName ASC; --ASC(Ascending),DESC(Descending)
SELECT job_id FROM Job WHERE jobName = 'Research Nurse';


-- 3. EMPLOYEES quary
SELECT Name, salary FROM Employees WHERE salary >= 116483.00;
SELECT name, hire_date FROM Employees WHERE Deptcode = '1A' ORDER BY hire_date ASC; 