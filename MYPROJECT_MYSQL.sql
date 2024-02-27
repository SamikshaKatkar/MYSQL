CREATE DATABASE FINAL_PROJECT;
USE FINAL_PROJECT;

CREATE TABLE ADMISSION_ENQUIRY(
ENQUIRY_ID           INT(20),
FIRST_NAME           VARCHAR(50),
LAST_NAME            VARCHAR(50),
CURRENT_ADDRESS      VARCHAR(100),
STUDENT_CONTACT      INT(20),
HIGHER_EDUCATION     VARCHAR(100),
MODE_OF_FEE_PAYMENT  VARCHAR(50));

DESC ADMISSION_ENQUIRY;

ALTER TABLE ADMISSION_ENQUIRY
ADD CONSTRAINT 
PRIMARY KEY (ENQUIRY_ID);

ALTER TABLE ADMISSION_ENQUIRY
ADD CONSTRAINT 
UNIQUE (STUDENT_CONTACT);

DESC ADMISSION_ENQUIRY;

INSERT INTO ADMISSION_ENQUIRY(Enquiry_ID,First_Name,Last_Name,Current_Address,Student_Contact,Higher_Education,Mode_Of_Fee_Payment) 
VALUES (1,'Mayur','Patil','Badlapur',1234567890,'BE Mechanical','Cash'),
(2,'Ratikesh','Satle','Ghatkopar',234567890,'BE Automobile','Education Loan'),
(3,'Yash','Soni','Vikroli',345678901,'BSc IT','Cancelled'),
(4,'Rujuta','Karekar','Panvel',456789012,'BE Mechanical','Cheque'),
(5,'Sakshi','Chavan','Khandeshwar',567890123,'BE Mechanical','Education Loan'),
(6,'Mansi','Shelar','Borivali',678901234,'BSc IT','Cash'),
(7,'Pawan','Khaire','Worli',789012345,'BE Automobile','Cash'),
(8,'Tejas','Patil','Panvel',890123456,'BE Mechanical','Cash'),
(9,'Surabhi','Shinde','Juinagar',901234567,'BE IT','Cancelled'),
(10,'Tanvi','Satvi','Palghar',102345678,'BSc Computer Science','Cash'),
(11,'Sachin','Pal','Thane',121314151,'BSc IT','Cheque'),
(12,'Amol','Mane','Chembur',171819101,'BE Mechanical','Cheque'),
(13,'Siddhesh','Jadhav','Ghatkopar',122232425,'BSc IT','Cash'),
(14,'Rohit','Borate','Nerul',262728920,'BE Civil','Cancelled'),
(15,'Shivani','Mishra','Nerul',313333435,'BSc Chemistry','Education Loan'),
(16,'Shreya','Mathane','Juinagar',637383930,'LLB','Education Loan'),
(17,'Sukanya','Chavan','Kalyan',442434445,'BSc Chemistry','Cancelled'),
(18,'Hindavi','Ambavne','Badlapur',447484940,'BSc Chemistry','Cash'),
(19,'Akul','Chavan','Nerul',515253555,'BSc Computer Science','Cheque'),
(20,'Jayesh','Kurhade','Nerul',565585950,'BAF','Cheque'),
(21,'Atharva','Katkar','Nerul',612636465,'BE ExTC','Education Loan'),
(22,'Prathamesh','Mule','Thane',667686960,'BAF','Education Loan'),
(23,'Rutik','Kamble','Dadar',717737475,'BMS','Cheque'),
(24,'Shreya','Sonar','Thane',767787970,'BCOM','Cancelled'),
(25,'Shreyas','Sonar','Ambernath',182838485,'BAF','Cash'),
(26,'Guruprasad','Bhoi','Powai',687888980,'BE Mechanical','Cash'),
(27,'Pratibha','Devghare','Koparkhairne',919293495,'BSc Chemistry','Education Loan'),
(28,'Rohit','Jaiswal','Airoli',969798999,'BSc IT','Cheque'),
(29,'Om','Kulkarni','Dombivali',123654790,'BE Mechanical','Cash'),
(30,'Rahul','Parab','Panvel',456987123,'BCOM','Cheque'),
(31,'Yash','Mane','Kalyan',987012365,'BSc Computer Science','Cheque'),
(32,'Amruta','Palve','Kharghar',147520369,'BSc Biotechnology','Cheque'),
(33,'Bhagyesh','Wavekar','Panvel',520369741,'BE Automobile','Education Loan'),
(34,'Mayuri','Raskar','Nerul',369520147,'BSc IT','Cash'),
(35,'Shridhar','Sahu','Ghatkopar',192648370,'BE Automobile','Cancelled'),
(36,'Jayesh','Girdhar','Kharghar',518462730,'BE IT','Cash'),
(37,'Abhijeet','Rane','Panvel',758642910,'BE Mechanical','Cancelled'),
(38,'Sujit','Patil','Nerul',864287103,'BE IT','Cheque'),
(39,'Akash','Ahirrao','Pen',624935710,'BE Mechanical','Cancelled'),
(40,'Aditya','Mohite','Airoli',468753190,'BE IT','Cheque'),
(41,'Vipul','Salvi','Thane',998070405,'BE Computer Science','Cheque'),
(42,'Shruti','Dabke','Kalyan',807050604,'BE Computer Science','Cash'),
(43,'Sanket','Dhone','Kalva',702030405,'BE Mechanical','Cancelled'),
(44,'Mohit','Shinde','Pen',661203040,'BE Mechanical','Cheque'),
(45,'Ashwin','Nair','Chembur',587946321,'BE Computer Science','Education Loan'),
(46,'Mudra','Bansod','Kurla',458972301,'BE Mechanical','Cheque'),
(47,'Salim','Jafri','Khandeshwar',337496880,'BE IT','Cash'),
(48,'Sakshi','Anekar','Airoli',225970416,'BE Computer Science','Cancelled'),
(49,'Sahil','Hiwale','Nerul',115697423,'BE IT','Cancelled'),
(50,'Prabhu','Mohite','Juinagar',365874900,'BE IT','Cash');

SELECT * FROM ADMISSION_ENQUIRY;

CREATE TABLE CONFIRMED_STUDENTS(
ENQUIRY_ID           INT(11),FOREIGN KEY (ENQUIRY_ID) REFERENCES ADMISSION_ENQUIRY(ENQUIRY_ID),
STUDENT_ID           INT(20) PRIMARY KEY,
FIRST_NAME           VARCHAR(50),
LAST_NAME            VARCHAR(50),
STUDENT_CONTACT      INT(11),
COURSE_ENROLLED      VARCHAR(100),
FACULTY_INCHARGE     VARCHAR(100),
BATCH                VARCHAR(50));

DESC CONFIRMED_STUDENTS;

INSERT INTO CONFIRMED_STUDENTS(Enquiry_ID,Student_ID,First_Name,Last_Name,Student_Contact,Course_Enrolled,Faculty_Incharge,Batch) 
VALUES (1,1001,'Mayur','Patil',123457890,'DSA with AI','Prof. Jayesh Patil','Batch 1 Timing 1-3 pm'),
(2,1002,'Ratikesh','Satle',234567891,'DSA with AI','Prof. Jayesh Patil','Batch 1 Timing 1-3 pm'),
(4,1003,'Rujuta','Karekar',456789023,'DSA with AI','Prof. Jayesh Patil','Batch 1 Timing 1-3 pm'),
(5,1004,'Sakshi','Chavan',567890134,'DSA with AI','Prof. Jayesh Patil','Batch 1 Timing 1-3 pm'),
(6,1005,'Mansi','Shelar',678901245,'DSA with AI','Prof. Jayesh Patil','Batch 1 Timing 1-3 pm'),
(7,1006,'Pawan','Khaire',789012456,'DSA with AI','Prof. Jayesh Patil','Batch 1 Timing 1-3 pm'),
(8,1007,'Tejas','Patil',890123567,'DSA with AI','Prof. Jayesh Patil','Batch 1 Timing 1-3 pm'),
(10,1008,'Tanvi','Satvi',102356789,'DSA with AI','Prof. Jayesh Patil','Batch 1 Timing 1-3 pm'),
(11,1009,'Sachin','Pal',121341516,'DSA with AI','Prof. Jayesh Patil','Batch 1 Timing 1-3 pm'),
(12,1010,'Amol','Mane',171891011,'DSA with AI','Prof. Jayesh Patil','Batch 1 Timing 1-3 pm'),
(13,1011,'Siddhesh','Jadhav',222232425,'DSA with AI','Prof. Jayesh Patil','Batch 1 Timing 1-3 pm'),
(15,1012,'Shivani','Mishra',332333435,'DSA with AI','Prof. Jayesh Patil','Batch 1 Timing 1-3 pm'),
(16,1013,'Shreya','Mathane',637383930,'DSA with AI','Prof. Jayesh Patil','Batch 1 Timing 1-3 pm'),
(18,1014,'Hindavi','Ambavne',647484940,'DSA with AI','Prof. Jayesh Patil','Batch 1 Timing 1-3 pm'),
(19,1015,'Akul','Chavan',515535455,'DSA with AI','Prof. Jayesh Patil','Batch 1 Timing 1-3 pm'),
(20,1016,'Jayesh','Kurhade',657585950,'DSA with AI','Prof. Jayesh Patil','Batch 1 Timing 1-3 pm'),
(21,1017,'Atharva','Katkar',162636465,'DSA with AI','Prof. Jayesh Patil','Batch 1 Timing 1-3 pm'),
(22,1018,'Prathamesh','Mule',667686960,'DSA with AI','Prof. Jayesh Patil','Batch 1 Timing 1-3 pm'),
(23,1019,'Rutik','Kamble',717737475,'DSA with AI','Prof. Jayesh Patil','Batch 1 Timing 1-3 pm'),
(25,1020,'Shreyas','Sonar',882838485,'DSA with AI','Prof. Jayesh Patil','Batch 1 Timing 1-3 pm'),
(26,2001,'Guruprasad','Bhoi',867888980,'Frontend Development','Prof. Sameer Singh','Batch 2 Timing 3-5 pm'),
(27,2002,'Pratibha','Devghare',192939495,'Frontend Development','Prof. Sameer Singh','Batch 2 Timing 3-5 pm'),
(28,2003,'Rohit','Jaiswal',969789990,'Frontend Development','Prof. Sameer Singh','Batch 2 Timing 3-5 pm'),
(29,2004,'Om','Kulkarni',123654790,'Frontend Development','Prof. Sameer Singh','Batch 2 Timing 3-5 pm'),
(30,2005,'Rahul','Parab',456981230,'Frontend Development','Prof. Sameer Singh','Batch 2 Timing 3-5 pm'),
(31,2006,'Yash','Mane',987012654,'Frontend Development','Prof. Sameer Singh','Batch 2 Timing 3-5 pm'),
(32,2007,'Amruta','Palve',148520369,'Frontend Development','Prof. Sameer Singh','Batch 2 Timing 3-5 pm'),
(33,2008,'Bhagyesh','Wavekar',820369741,'Frontend Development','Prof. Sameer Singh','Batch 2 Timing 3-5 pm'),
(34,2009,'Mayuri','Raskar',369520147,'Frontend Development','Prof. Sameer Singh','Batch 2 Timing 3-5 pm'),
(36,2010,'Jayesh','Girdhar',918462730,'Frontend Development','Prof. Sameer Singh','Batch 2 Timing 3-5 pm'),
(38,2011,'Sujit','Patil',864987103,'Frontend Development','Prof. Sameer Singh','Batch 2 Timing 3-5 pm'),
(40,2012,'Aditya','Mohite',268753190,'Frontend Development','Prof. Sameer Singh','Batch 2 Timing 3-5 pm'),
(41,2013,'Vipul','Salvi',908070405,'Frontend Development','Prof. Sameer Singh','Batch 2 Timing 3-5 pm'),
(42,2014,'Shruti','Dabke',880050604,'Frontend Development','Prof. Sameer Singh','Batch 2 Timing 3-5 pm'),
(44,2015,'Mohit','Shinde',661203040,'Frontend Development','Prof. Sameer Singh','Batch 2 Timing 3-5 pm'),
(45,2016,'Ashwin','Nair',557946321,'Frontend Development','Prof. Sameer Singh','Batch 2 Timing 3-5 pm'),
(46,2017,'Mudra','Bansod',458972301,'Frontend Development','Prof. Sameer Singh','Batch 2 Timing 3-5 pm'),
(47,2018,'Salim','Jafri',335496880,'Frontend Development','Prof. Sameer Singh','Batch 2 Timing 3-5 pm'),
(49,2019,'Prabhu','Mohite',365874900,'Frontend Development','Prof. Sameer Singh','Batch 2 Timing 3-5 pm'),
(50,2020,'Sukanya','Chavan',412434445,'Frontend Development','Prof. Sameer Singh','Batch 2 Timing 3-5 pm');

SELECT * FROM CONFIRMED_STUDENTS;

CREATE TABLE FINAL_STUDENT_ANALYSIS(
STUDENT_ID           INT(20),FOREIGN KEY (STUDENT_ID) REFERENCES CONFIRMED_STUDENTS(STUDENT_ID),
FIRST_NAME           VARCHAR(50),
LAST_NAME            VARCHAR(50),
ATTENDANCE           INT(10),
ASSIGNMENT           INT(10),
ASSESSMENT           INT(10),
PROJECT              INT(10),
MOCK_INTERVIEW        INT(10),
JOB_READY_EXAM       INT(10),
MARKS_OBTAINED       INT(10),
PERCENTAGE           DECIMAL(10,2),
STATUS               VARCHAR(50));

DESC FINAL_STUDENT_ANALYSIS;

INSERT INTO FINAL_STUDENT_ANALYSIS(Student_ID,First_Name,Last_Name,Attendance,Assignment,Assessment,Project,Mock_Interview,Job_Ready_Exam,Marks_Obtained,Percentage,Status) 
VALUES (1001,'Mayur','Patil',8,8,8,10,9,9,52,86.67,'Pass'),
 (1002,'Ratikesh','Satle',10,8,8,10,9,9,54,90.00,'Pass'),
 (1003,'Rujuta','Karekar',8,8,8,9,9,8,50,83.33,'Pass'),
 (1004,'Sakshi','Chavan',7,8,7,9,9,3,43,71.67,'Practice'),
 (1005,'Mansi','Shelar',10,8,9,9,10,10,56,93.33,'Pass'),
 (1006,'Pawan','Khaire',9,8,10,9,10,9,55,91.67,'Pass'),
 (1007,'Tejas','Patil',9,8,5,8,10,4,44,73.33,'Practice'),
 (1008,'Tanvi','Satvi',6,8,6,9,4,6,39,65,'Practice'),
 (1009,'Sachin','Pal',7,8,7,6,3,9,40,66.67,'Practice'),
 (1010,'Amol','Mane',8,8,3,10,2,8,39,65,'Practice'),
 (1011,'Siddhesh','Jadhav',10,8,9,10,8,8,53,88.33,'Pass'),
 (1012,'Shivani','Mishra',10,8,6,10,7,10,51,85,'Pass'),
 (1013,'Shreya','Mathane',10,8,8,9,8,9,52,86.67,'Pass'),
 (1014,'Hindavi','Ambavne',10,8,7,8,8,9,50,83.33,'Pass'),
 (1015,'Akul','Chavan',10,8,5,9,8,9,49,81.67,'Pass'),
 (1016,'Jayesh','Kurhade',9,8,10,9,9,9,54,90,'Pass'),
 (1017,'Atharva','Katkar',4,8,10,9,6,8,45,75,'Pass'),
 (1018,'Prathamesh','Mule',7,8,10,7,8,10,50,83.33,'Pass'),
 (1019,'Rutik','Kamble',9,8,9,7,8,10,51,85,'Pass'),
 (1020,'Shreyas','Sonar',9,8,7,6,9,9,48,80,'Pass'),
 (2001,'Guruprasad','Bhoi',9,8,9,9,9,10,54,90,'Pass'),
 (2002,'Pratibha','Devghare',8,8,9,8,7,10,50,83.33,'Pass'),
 (2003,'Rohit','Jaiswal',5,8,5,7,7,8,40,66.67,'Practice'),
 (2004,'Om','Kulkarni',6,8,7,7,6,7,41,68.33,'Practice'),
 (2005,'Rahul','Parab',9,8,7,7,5,7,43,71.67,'Practice'),
 (2006,'Yash','Mane',8,8,9,10,8,10,53,88.33,'Pass'),
 (2007,'Amruta','Palve',10,8,9,8,7,8,50,83.33,'Pass'),
 (2008,'Bhagyesh','Wavekar',10,10,10,10,10,10,60,100.00,'Pass'),
 (2009,'Mayuri','Raskar',9,8,8,6,6,9,46,76.67,'Pass'),
 (2010,'Jayesh','Girdhar',10,8,9,8,8,9,52,86.67,'Pass'),
 (2011,'Sujit','Patil',10,8,3,7,4,3,35,58.33,'Practice'),
 (2012,'Aditya','Mohite',7,8,6,9,9,8,47,78.33,'Pass'),
 (2013,'Vipul','Salvi',8,8,5,8,7,7,43,71.67,'Practice'),
 (2014,'Shruti','Dabke',8,8,10,10,10,10,56,93.33,'Pass'),
 (2015,'Mohit','Shinde',9,8,10,10,10,10,57,95,'Pass'),
 (2016,'Ashwin','Nair',9,8,8,8,7,6,46,76.67,'Pass'),
 (2017,'Mudra','Bansod',9,8,6,9,9,5,46,76.67,'Pass'),
 (2018,'Salim','Jafri',8,8,9,6,6,4,41,68.33,'Practice'),
 (2019,'Prabhu','Mohite',9,8,5,7,6,4,39,65.00,'Practice'),
 (2020,'Sukanya','Chavan',10,8,8,8,6,8,48,80.00,'Pass');

SELECT * FROM FINAL_STUDENT_ANALYSIS;

-- 1) List all confirmed students with their enrollment details (ENQUIRY_ID, FIRST_NAME, LAST_NAME, COURSE_ENROLLED) along with the mode of fee payment from the ADMISSION_ENQUIRY table.

SELECT CS.ENQUIRY_ID, AE.FIRST_NAME, AE.LAST_NAME, CS.COURSE_ENROLLED, AE.MODE_OF_FEE_PAYMENT
FROM CONFIRMED_STUDENTS AS CS
JOIN ADMISSION_ENQUIRY AS AE ON CS.ENQUIRY_ID;

-- 2) Retrieve the final analysis details for all students who have confirmed their admission.

SELECT FA.STUDENT_ID, FA.FIRST_NAME, FA.LAST_NAME, FA.MARKS_OBTAINED, FA.PERCENTAGE, FA.STATUS
FROM FINAL_STUDENT_ANALYSIS FA
JOIN CONFIRMED_STUDENTS CS ON FA.STUDENT_ID = CS.STUDENT_ID;

-- 3) Find the names of students who have not confirmed their admission and have submitted an enquiry.

SELECT AE.FIRST_NAME, AE.LAST_NAME 
FROM ADMISSION_ENQUIRY AE
LEFT JOIN CONFIRMED_STUDENTS CS ON AE.ENQUIRY_ID = CS.ENQUIRY_ID
WHERE CS.ENQUIRY_ID IS NULL;

SELECT FIRST_NAME, LAST_NAME,MODE_OF_FEE_PAYMENT 
FROM ADMISSION_ENQUIRY
WHERE MODE_OF_FEE_PAYMENT = 'CANCELLED';

-- 4) Retrieve the name, contact information and faculty in charge for all confirmed students enrolled in a specific batch.

SELECT CS.FIRST_NAME, CS.STUDENT_CONTACT, CS.FACULTY_INCHARGE
FROM CONFIRMED_STUDENTS CS
JOIN FINAL_STUDENT_ANALYSIS FA ON CS.STUDENT_ID = FA.STUDENT_ID
WHERE CS.BATCH = 'Batch 1 Timing 1-3 pm';

SELECT FIRST_NAME, STUDENT_CONTACT, FACULTY_INCHARGE
FROM CONFIRMED_STUDENTS
WHERE BATCH = 'Batch 2 Timing 3-5 pm';

-- 5) Find the enrollment details (ENQUIRY_ID, FIRST_NAME, LAST_NAME) for students whose final analysis percentage is above a certain threshold.

SELECT AE.ENQUIRY_ID, AE.FIRST_NAME, AE.LAST_NAME
FROM ADMISSION_ENQUIRY AE
WHERE AE.ENQUIRY_ID IN (SELECT CS.ENQUIRY_ID FROM CONFIRMED_STUDENTS CS
    JOIN FINAL_STUDENT_ANALYSIS FA ON CS.STUDENT_ID = FA.STUDENT_ID
    WHERE FA.PERCENTAGE > 75);

-- 6) Retrieve the names of students who have the highest attendance in the final analysis.

SELECT FA.FIRST_NAME, FA.LAST_NAME
FROM FINAL_STUDENT_ANALYSIS FA
WHERE FA.ATTENDANCE = (SELECT MAX(ATTENDANCE) FROM FINAL_STUDENT_ANALYSIS);

-- 7) List all students who have not submitted an admission enquiry.

SELECT FIRST_NAME, LAST_NAME
FROM FINAL_STUDENT_ANALYSIS
WHERE STUDENT_ID NOT IN (SELECT STUDENT_ID FROM CONFIRMED_STUDENTS);

-- 8) Retrieve the average percentage of students for a specific course.

SELECT AVG(FA.PERCENTAGE) AS AVERAGE_PERCENTAGE
FROM FINAL_STUDENT_ANALYSIS FA
JOIN CONFIRMED_STUDENTS CS ON FA.STUDENT_ID = CS.STUDENT_ID
WHERE CS.COURSE_ENROLLED = 'Frontend Development';

-- 9) Find the names of students who have not been assessed in the final analysis.

SELECT FIRST_NAME, LAST_NAME
FROM CONFIRMED_STUDENTS
WHERE STUDENT_ID NOT IN (SELECT STUDENT_ID FROM FINAL_STUDENT_ANALYSIS);

-- 10) Update Final Analysis Marks for a Student

UPDATE FINAL_STUDENT_ANALYSIS
SET ATTENDANCE = 90, ASSIGNMENT = 85, ASSESSMENT = 75, PROJECT = 88, MOCK_INTERVIEW = 92, JOB_READY_EXAM = 89, MARKS_OBTAINED = 429, PERCENTAGE = 85.5, STATUS = 'Pass'
WHERE STUDENT_ID = 1010;

-- 11) Delete an Admission Enquiry 

DELETE FROM ADMISSION_ENQUIRY
WHERE MODE_OF_FEE_PAYMENT = 'Cancelled';
-- cannot delete or update a parent row: a foreign key constraint fails

-- 12) Update Faculty Incharge for Students in a Specific Batch

UPDATE CONFIRMED_STUDENTS
SET FACULTY_INCHARGE = 'Prof. Jayesh Patil'
WHERE BATCH = 'Batch 1 Timing 1-3 pm';

-- 13) Add a New Column to the CONFIRMED_STUDENTS Table:

ALTER TABLE CONFIRMED_STUDENTS
ADD COLUMN DATE_OF_ENROLLMENT DATE;

-- 14) Create an Index on the STUDENT_CONTACT Column in ADMISSION_ENQUIRY:

CREATE INDEX idx_student_contact ON ADMISSION_ENQUIRY(STUDENT_CONTACT);

-- 15) Modify the Data Type of the ATTENDANCE Column in FINAL_STUDENT_ANALYSIS:

ALTER TABLE FINAL_STUDENT_ANALYSIS
MODIFY COLUMN ATTENDANCE DECIMAL(5,2);

-- 16) Drop the HIGHER_EDUCATION Column from ADMISSION_ENQUIRY:

ALTER TABLE CONFIRMED_STUDENTS
DROP COLUMN DATE_OF_ENROLLMENT;

-- 17) Rename the BATCH Column in CONFIRMED_STUDENTS:

ALTER TABLE CONFIRMED_STUDENTS
RENAME COLUMN BATCH TO ENROLLMENT_BATCH;

-- 18) Create a UNIQUE Constraint on the STUDENT_CONTACT Column in CONFIRMED_STUDENTS:

ALTER TABLE CONFIRMED_STUDENTS
ADD CONSTRAINT uk_student_contact
UNIQUE (STUDENT_CONTACT);

SELECT * FROM CONFIRMED_STUDENTS;
DESC CONFIRMED_STUDENTS;

-- 19) Retrieve the names and percentages of students from the FINAL_STUDENT_ANALYSIS table, ordered by the percentage in descending order:

SELECT FIRST_NAME, LAST_NAME, PERCENTAGE
FROM FINAL_STUDENT_ANALYSIS
ORDER BY PERCENTAGE DESC;

-- 20) Calculate the average percentage for each course enrolled by students in the CONFIRMED_STUDENTS table:

SELECT COURSE_ENROLLED, AVG(FA.PERCENTAGE) AS AVERAGE_PERCENTAGE
FROM CONFIRMED_STUDENTS CS
JOIN FINAL_STUDENT_ANALYSIS FA ON CS.STUDENT_ID = FA.STUDENT_ID
GROUP BY COURSE_ENROLLED;

