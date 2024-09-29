CREATE DATABASE college;                -- using this CREATE  command we can create database 
USE  college;

CREATE TABLE student(                     -- by using this command we can create table 
rollno INT  PRIMARY KEY,
marks FLOAT NOT NULL,
grade VARCHAR(1),
city VARCHAR(20)
);

ALTER TABLE student
ADD name VARCHAR(50)
AFTER rollno;

ALTER TABLE student
DROP COLUMN name;

ALTER TABLE student                           -- we can use this commmand ALTER for ADD and DROP column
ADD COLUMN name VARCHAR(50)
AFTER `rollno`;


SELECT * FROM STUDENT;

INSERT INTO student                              -- by using this command we can add values in the table 
(rollno,name,marks,grade,city)
VALUES
(101,'ANIL',78,'A','Pune'),
(102,'SUNIL',71,'A','Baramati'),
(103,'Rohan',68,'B','Daund'),
(104,'Yuvraj',75,'A','Hol');

use college;
SELECT * FROM student;

select name,MARKS From STUDENT
WHERE MARKS>=70;

select name,city  From STUDENT
WHERE city = 'Pune';

select name OR marks  From student
WHERE marks>70;

select name,city from student 
where name !='Rohan';

select marks from student
where marks  <90                           -- we see the limited rows we can use  limit funtion 
limit 3;

RENAME TABLE student TO student_information;

CREATE TABLE yuvraj.biodata AS
SELECT * FROM college.biodata WHERE 1 = 0;


drop database college;
show databases;

use yuvraj;
RENAME TABLE biodata TO student_biodata;

RENAME TABLE student_information TO tybsc_class;

select * from tybsc_class;
select * from student_biodata;

select * from tybsc_class
order by city DESC;

select * from tybsc_class
order by city ASC;

select * from tybsc_class
order by NAME DESC;

Select AVG(Age)
FROM tybsc_class;

Select MAX(Age) FROM tybsc_class;

Select AVG(Age) FROM tybsc_class;

Select MIN(Age) FROM tybsc_class;

Select SUM(Age) FROM tybsc_class;

Select COUNT(NAME) FROM tybsc_class;             -- we can use aggrigate functiont to sort out one value from the data in this we use COUNT,SUM,MAX,MIN etc.

select * from  tybsc_class;

select AGE from tybsc_class;

use yuvraj;
select * from tybsc_class;

select name from tybsc_class
group by city;
  alter table tybsc_class
  ADD column marks float not null
  after city ;
  
select * from tybsc_class;
  
UPDATE tybsc_class
SET marks = 88
WHERE id = 2;
UPDATE tybsc_class SET marks = 83
WHERE id = 3;

UPDATE tybsc_class SET marks = 80                                 -- we can use the WHERE  for perticular condition like 
WHERE id = 4;
UPDATE tybsc_class SET marks = 86
WHERE id = 5;
UPDATE tybsc_class SET marks = 91
WHERE id = 6;
UPDATE tybsc_class SET marks = 88
WHERE id = 7;

UPDATE tybsc_class SET marks = 79
WHERE id = 8;

UPDATE tybsc_class SET marks = 87
WHERE id = 9;
select * from tybsc_class;

select city from tybsc_class
order by city;

select city,avg(marks) from tybsc_class                -- we can use GROUP BY  command to sort the data on the perticular condition. 
group by city,marks
order by avg(marks) desc;

UPDATE tybsc_class
SET marks=84
WHERE ID=8;


UPDATE tybsc_class
SET CITY= Morgaon
WHERE ID=1;

select * from tybsc_class;       -- we can us ethis command to see the all column data in the table 
USE YUVRAJ;
select * from tybsc_class;

UPDATE tybsc_class
SET CITY= 'Morgaon'
WHERE ID=1;

UPDATE tybsc_class       -- we can use update command for single row updating.as
SET marks=93
WHERE ID=6;

ALTER TABLE tybsc_class
ADD COLUMN grade varchar(1) after marks;

UPDATE tybsc_class
SET grade= 'A'
WHERE marks <=85;

SET SQL_SAFE_UPDATES =0;             -- we can use this command to off the SQL SAFE mode.

select * from tybsc_class;

UPDATE tybsc_class
SET grade= 'o'
WHERE marks >85;

                                    -- if i want to add 2 marks for each students
UPDATE tybsc_class
SET marks=marks+2;

UPDATE tybsc_class
SET grade= 'o'
WHERE marks >85;

UPDATE tybsc_class
SET grade= 'o'
WHERE marks >85;
use yuvraj;

select * from tybsc_class;

DELETE FROM tybsc_class                   -- if i want to DELETE row then we can use ELETE command
WHERE name = 'Rohan';

UPDATE tybsc_class
SET ID=10
WHERE name='Yuvraj';

INSERT INTO tybsc_class
(ID,NAME,AGE,CITY,marks,grade)
VALUES
(9,'Rohan',24,'Morgaon',89,'o');

use yuvraj;
select * from tybsc_class;

UPDATE tybsc_class
SET ID=7
WHERE ID=9;

UPDATE tybsc_class
SET ID=9
WHERE ID=11;

create table dept(
id int primary key,
name varchar(50)
);

insert into dept
(id,name)
VALUES
(101, 'komal'),
(102,'meghana');


create table teacher(     -- Difference between FOREIGN KEY AND PRIMARY KEY
id int primary key,        -- PARENT AND CHILD TABLE
name varchar(50),
dept_id int,
FOREIGN KEY(dept_id) references dept(id)
on update cascade
on delete cascade
);

-- 'CASCADE' IF we write above command then,
-- changes in PARENT table will automatically changed in child table

insert into teacher
(id,name,dept_id)
VALUES
(1, 'komal',101),
(2,'meghana',102);

update dept           -- can cahnge valus of rows using this 'UPDATE' & 'SET'and 'WHERE' command
set name ='adhav'
where id =101;

select * from dept;
select * from teacher;

update dept 
set id=100
where id =101;

update dept 
set name='komal'
where id =100;

use yuvraj;

 ALTER TABLE customers          -- by using RENAME TO command can change table name
 RENAME TO customer_info;

select * from customer_info;

alter table customer_info           -- using this command can drop column
drop column bank;

alter table customer_info
add column bank varchar(10) not null default 'sbi';    -- using this command can ADD column

alter table customer_info
change column bank bank_name varchar(50);             -- using this command can change 'OLD COLUMN' NAME TO 'NEW column name'

alter table customer_info
modify column bank_name varchar(10);               -- using 'MODIFY' command can change 'OLD data type of column' TO 'new column data type'

select * from tybsc_class;

alter table tybsc_class
change name full_name varchar(50) not null;

delete from tybsc_class
where marks<=82;

SET SQL_SAFE_UPDATES = 0;
USE YUVRAJ;

UPDATE  tybsc_class
SET grade='A'
where marks<=90;

SET SQL_SAFE_UPDATES =0;

select * from tybsc_class;

update tybsc_class
set ID=ID-1;














