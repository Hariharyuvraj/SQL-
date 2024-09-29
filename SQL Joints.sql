use yuvraj;

                                  -- for table 1  (LEFT TABLE)

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(50),
    DepartmentID INT
);

INSERT INTO Employees (EmployeeID, EmployeeName, DepartmentID)
VALUES
(1, 'Alice', 101),
(2, 'Bob', 102),
(3, 'Charlie', 103),
(4, 'David', NULL),
(5, 'Eva', 101);

									-- for table 2  (RIGHT TABLE)

CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50)
);

INSERT INTO Departments (DepartmentID, DepartmentName) 
VALUES
(101, 'HR'),
(102, 'Finance'),
(103, 'IT'),
(104, 'Marketing');

select * from Employees;
select * from Departments;

									-- INNER JOIN QUERY (Comman data of 2 table will exreact)
                                    -- (Comman data of 2 table will exreact)
SELECT * FROM Employees           
INNER JOIN Departments
ON Employees.DepartmentID = Departments.DepartmentID;

-- you can write query by using substitute name to the table

SELECT * FROM Employees as e            
INNER JOIN Departments as d
ON e.DepartmentID = d.DepartmentID;

									-- OUTER JOIN (LEFT JOIN)
									-- If i want data from table A and overlap data with table B
SELECT * FROM Employees           
LEFT JOIN Departments
ON Employees.DepartmentID = Departments.DepartmentID;

									-- OUTER JOIN (RIGHT JOIN) 
                                    -- If i want data from table B and overlap data with table A
SELECT * FROM Employees           
RIGHT JOIN Departments
ON Employees.DepartmentID = Departments.DepartmentID;

							       -- FULL JOIN (UNION)
                                   -- If i want data of 2 table can use full join (union)
SELECT * FROM Employees           
LEFT JOIN Departments
ON Employees.DepartmentID = Departments.DepartmentID
UNION
SELECT * FROM Employees           
RIGHT JOIN Departments
ON Employees.DepartmentID = Departments.DepartmentID;

                                  -- Left Exclusive Join
							      -- By using this query can extact table A data NOT those data which is overlaped with table B 
SELECT * FROM Employees           
LEFT JOIN Departments
ON Employees.DepartmentID = Departments.DepartmentID
WHERE Departments.DepartmentID IS NULL;

                                  -- Right Exclusive Join
                                  -- By using this query can extact table B data NOT those data which is overlaped with table A 

SELECT * FROM Employees           
RIGHT JOIN Departments
ON Employees.DepartmentID = Departments.DepartmentID
WHERE Employees.DepartmentID IS NULL;           

                                -- FULL Exclusive Join
                                -- can extract all data of Table A and tble B but not those data which is comman in both tables 
SELECT * FROM Employees           
LEFT JOIN Departments
ON Employees.DepartmentID = Departments.DepartmentID
WHERE Departments.DepartmentID IS NULL
UNION
SELECT * FROM Employees           
RIGHT JOIN Departments
ON Employees.DepartmentID = Departments.DepartmentID
WHERE Employees.DepartmentID IS NULL; 

SELECT * FROM Employees;
SELECT * FROM Departments ;
								-- SELF JOIN(Join with table A with Table A )

SELECT A.EmployeeName, B.DepartmentName
FROM Employees AS A
JOIN Departments AS B
ON A.DepartmentID = B.DepartmentID;

    select * from Departments;
    
                                 -- UNION (using this UNION command we can extract all from tables 2)
SELECT EmployeeName from Employees
union
SELECT DepartmentName from Departments;

            -- OR
            
SELECT EmployeeID from Employees
union
SELECT DepartmentName from Departments;

               -- SQL SUB QUERY ---
use yuvraj;
SELECT * FROM tybsc_class;

select avg(marks) from tybsc_class;

select full_name,marks from tybsc_class
where marks> 89.375;

                     -- subQuery 
                     
select full_name,marks from tybsc_class 
where marks> (
select avg(marks) 
from tybsc_class);

select marks 
from tybsc_class
where marks % 2=0;

select marks,full_name           -- SUB QUERY--
from tybsc_class
where marks in (
select marks 
from tybsc_class
where marks % 2=0);

                                -- 
SELECT MAX(marks),full_name 
from tybsc_class
WHERE city='Baramati'; 

ALTER TABLE tybsc_class
CHANGE COLUMN full_name Name varchar(50);

select * from tybsc_class;

ALTER TABLE tybsc_class
CHANGE COLUMN marks Marks int;

ALTER TABLE tybsc_class
CHANGE COLUMN grade Grade varchar(1);

select * from 
tybsc_class
WHERE CITY ='Baramati';

SELECT MAX(Marks)
FROM(select * from 
tybsc_class
WHERE CITY ='Baramati') AS temp;








