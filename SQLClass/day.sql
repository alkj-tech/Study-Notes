use employee_db;

select * from employee;

create table employee_2(
emp_id int primary key,
emp_name varchar(255) not null,
emp_des varchar(255) not null,
emp_salary int not null,
project_id int not null );

alter table employee_2
modify project_id int;


insert into employee_2(emp_id,emp_name,emp_des,emp_salary,project_id) 
values(12,'Ravi','Software Engineer',50000,809),
(23,'mohan','Software Engineer',50000,809),
(11,'tamil','Desk Engineer',30000,null),
(98,'tiyagu','Desk Engineer',30000,null);

select * from employee_2;

select distinct(a.emp_name) from employee a, employee_2 b 
where a.project_id = b.project_id and 
a.emp_id <> b.emp_id;

CREATE TABLE employee1 (
  employeeid INT PRIMARY KEY,
  emp_name VARCHAR(50),
  managerid INT
);

CREATE TABLE employee2 (
  employeeid INT PRIMARY KEY,
  emp_name VARCHAR(50),
  managerid INT
);

INSERT INTO employee1 (employeeid, emp_name, managerid) VALUES
(1, 'Alice', 100),
(2, 'Bob', null),
(3, 'Charlie', 101),
(4, 'David', null),
(5, 'Eve', 102);

INSERT INTO employee2 (employeeid, emp_name, managerid) VALUES
(10, 'Frank', 100),
(11, 'Grace', 101),
(12, 'Heidi', null),
(13, 'Ivan', 100),
(14, 'Judy', null);

INSERT INTO employee2 (employeeid, emp_name, managerid) VALUES
(19, 'rose', 102);

SELECT DISTINCT 
    CONCAT(e1.emp_name, ', ', e2.emp_name) AS employee_with_manager,
    e1.managerid
FROM employee1 e1
JOIN employee2 e2 ON e1.managerid = e2.managerid
WHERE e1.managerid IS NOT NULL
  AND e1.employeeid <> e2.employeeid;
  
  SELECT 
    e1.emp_name || ', ' || COALESCE(e2.emp_name, 'No Manager') AS employee_with_manager
FROM employee1 e1
LEFT JOIN employee1 e2 ON e1.managerid = e2.employeeid WHERE e1.managerid IS NOT NULL;

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    manager_id INT,
    FOREIGN KEY (manager_id) REFERENCES employees(emp_id)
);

INSERT INTO employees (emp_id, emp_name, manager_id) VALUES
(1, 'Alice', NULL),
(2, 'Bob', 1),
(3, 'Charlie', 1),
(4, 'David', 2),
(5, 'Eve', 2);

SELECT 
    e.emp_name AS Employee,
    m.emp_name AS Supervisor
FROM 
    employees e
LEFT JOIN 
    employees m ON e.manager_id = m.emp_id
WHERE 
    e.emp_name IN ('Alice', 'Bob');