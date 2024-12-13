CREATE TABLE emp (
    empno INT PRIMARY KEY,
    ename VARCHAR(50),
    job VARCHAR(30),
    mgr INT,
    sal DECIMAL(10, 2),
    deptno INT
);

CREATE TABLE dept (
    deptno INT PRIMARY KEY,
    dname VARCHAR(50),
    loc VARCHAR(50)
);

CREATE TABLE salgrade (
    grade INT PRIMARY KEY,
    losal DECIMAL(10, 2),
    hisal DECIMAL(10, 2)
);

INSERT INTO dept (deptno, dname, loc) VALUES
(10, 'ACCOUNTING', 'NEW YORK'),
(20, 'RESEARCH', 'DALLAS'),
(30, 'SALES', 'CHICAGO'),
(40, 'OPERATIONS', 'BOSTON');

INSERT INTO emp (empno, ename, job, mgr, sal, deptno) VALUES
(7839, 'KING', 'PRESIDENT', NULL, 5000.00, 10),
(7566, 'JONES', 'MANAGER', 7839, 2975.00, 20),
(7698, 'BLAKE', 'MANAGER', 7839, 2850.00, 30),
(7782, 'CLARK', 'MANAGER', 7839, 2450.00, 10),
(7788, 'SCOTT', 'ANALYST', 7566, 3000.00, 20),
(7902, 'FORD', 'ANALYST', 7566, 3000.00, 20),
(7499, 'ALLEN', 'SALESMAN', 7698, 1600.00, 30),
(7521, 'WARD', 'SALESMAN', 7698, 1250.00, 30),
(7654, 'MARTIN', 'SALESMAN', 7698, 1250.00, 30),
(7844, 'TURNER', 'SALESMAN', 7698, 1500.00, 30),
(7900, 'JAMES', 'CLERK', 7698, 950.00, 30),
(7934, 'MILLER', 'CLERK', 7782, 1300.00, 10);

INSERT INTO salgrade (grade, losal, hisal) VALUES
(1, 700, 1200),
(2, 1201, 1400),
(3, 1401, 2000),
(4, 2001, 3000),
(5, 3001, 9999);

SELECT * FROM emp;
SELECT * FROM dept;
SELECT * FROM salgrade;
------------------------------------------------------------------------------------------------------------------------------------------------------------

First 1 to 100 Questions:

-- Question:1
-- SELECT * FROM dept;

-- Question:2
-- SELECT * FROM emp;

-- Question:3
-- SELECT ename,job FROM emp;

-- Question:4
-- SELECT ename, sal FROM emp;


-- CREATE TABLE employee_salary (
--     empno INT PRIMARY KEY,
--     sal DECIMAL(10, 2),
--     comm DECIMAL(10, 2)
-- );

-- INSERT INTO employee_salary (empno, sal, comm)
-- VALUES
--     (1001, 3000.00, 500.00),
--     (1002, 4000.00, 400.00),
--     (1003, 3500.00, 300.00);

-- SELECT * FROM employee_salary;

-- Question:5
-- SELECT empno,sal+comm FROM employee_salary;

-- Question:6
-- SELECT empno,(sal+comm)*12 AS annual_salary FROM employee_salary;

-- Question:7
-- SELECT * FROM emp WHERE deptno=10;

-- Question:8
-- SELECT ename FROM emp WHERE job='CLERK' AND sal>3000;

-- Question:11
-- SELECT ename FROM emp WHERE (job='SALESMAN' OR job ='CLERK' OR job='ANALYST') AND sal>2000;
-- SELECT ename FROM emp WHERE job IN ('SALESMAN','CLERK','ANALYST') AND sal>2000;


-- create table emp1 (
-- id int primary key,
-- name varchar(50),
-- email varchar (50),
-- departments varchar(50),
-- salary decimal (9,2),
-- joindate date,
-- currentdate date,
-- depart_no int,
-- location varchar(50) 
-- );

-- insert into emp1 values (1,'abc','abc@gmail','clerk', 4000,'1995-1-15','2000-1-1',10,'delhi'), 
-- (2,'pqr','pqr@gamil','sales man',4000,'1997-11-28','2000-1-1',20,'chennai'), (3,'lop','lop@gamil','analyst',25000,'1993-8-8','2000-1-1',40,'us'),
-- (4,'uvw','uvw@gamil','data scientist',60000,'1990-9-23','2000-1-1',50,'uk'),(5,'hmn','hmn@gamil','clerk',3000,'1988-5-13','2000-1-1',20,'chennai'),
-- (6, 'fgh','fgh@gmail.com','manager',80000,'1985-6-10','2000-1-1',20,'chennai'),(7, 'jkl','jkl@gmail.com','manager',90000,'1983-6-10','2000-1-1',30,'pune'),
-- (8, 'lmn','lmn@gmail.com','analyst',15000,'1994-6-10','2000-1-1',40,'us'), (9, 'nmo','nmo@gmail.com','analyst',35000,'1993-6-10','2000-1-1',30,'pune'),
-- (10, 'rat','rat@gmail.com','analyst',28000,'1995-6-10','2000-1-1',10,'delhi'), (11,'cat','cat@gmail','clerk', 5000,'1996-1-15','2000-1-1',30,'pune'),
-- (12,'pat','pat@gmail','clerk', 4500,'1997-1-15','2000-1-1',40,'us'), (13,'tom','tom@gamil','data scientist',70000,'1992-9-23','2000-1-1',10,'delhi'), 
-- (14,'wat','wat@gamil','data scientist',75000,'1994-9-23','2000-1-1',40,'us'), (15, 'ross','ross@gmail.com','manager',95000,'1984-6-10','2000-1-1',40,'us'),
-- (16, 'kat','kat@gmail.com','manager',98000,'1982-6-10','2000-1-1',10,'delhi'), (17, 'joe','joe@gmail.com','analyst',30000,'1995-6-10','2000-1-1',20,'chennai'),
-- (18, 'chan','chan@gmail.com','analyst',32000,'1996-6-10','2000-1-1',50,'uk'), (19,'tag','tag@gamil','sales man',7500,'1995-11-28','2000-1-1',10,'delhi'),
-- (20,'hank','hank@gamil','sales man',8000,'1992-11-28','2000-1-1',30,'pune'),(21,'hank','hank@gamil','sales man',8000,'1992-11-28','2000-1-1',30,'pune');

-- SELECT * FROM emp1;

-- Question:12
-- SELECT name FROM emp1 WHERE DATEDIFF(currentdate,joindate) > 5*365;

-- Question:13
-- SELECT * FROM emp1 WHERE joindate>'1990-06-30' AND joindate<'1990-12-31';

-- Question:14
-- SELECT CURDATE();

-- Question:18
-- SELECT * FROM emp1 WHERE depart_no IN (10,20,40) OR departments IN ('clerk','salesman','analyst');

-- Question:19
-- SELECT name FROM emp1 WHERE name LIKE 'h%';

-- Question:21
-- SELECT name FROM emp1 WHERE name LIKE '_a%';

-- Question:22
-- SELECT name FROM emp1 WHERE name LIKE '____';
-- SELECT name FROM emp1 WHERE LENGTH(name)=3;

-- Question:23
-- SELECT * FROM emp WHERE empno NOT IN (SELECT mgr FROM emp WHERE mgr IS NOT NULL);

-- Question:24
-- SELECT * FROM emp WHERE job NOT IN ('SALESMAN','CLERK','ANALYST');

-- Question:26
-- SELECT COUNT(*) FROM emp;

-- Question:27
-- SELECT SUM(sal) FROM emp;

-- Question:28
-- SELECT MAX(sal) FROM emp;

-- Question:29
-- SELECT MIN(sal) FROM emp;

-- Question:30
-- SELECT AVG(sal) FROM emp;

-- Question:31
-- SELECT MAX(sal) FROM emp WHERE job='CLERK';

-- Question:32
-- SELECT MAX(sal) FROM emp WHERE deptno=20;

-- Question:33
-- SELECT MIN(sal) FROM emp WHERE job='SALESMAN';

-- Question:34
-- SELECT AVG(Sal) FROM emp e WHERE e.empno IN (SELECT mgr FROM emp);

-- Question:36
-- SELECT * FROM emp ORDER BY sal;

-- Question:37
-- SELECT * FROM emp ORDER BY sal DESC;

-- Question:38
-- SELECT * FROM emp ORDER BY ename;

-- Question:39
-- SELECT * FROM emp ORDER BY ename,deptno,sal;

-- Question:40
-- SELECT ename,(sal*12) AS annual_salary FROM emp ORDER BY (sal*12) DESC;

-- Question:41
-- SELECT ename,sal,(sal*0.15) AS hra,(sal*0.1) AS da,(sal*0.05) AS pf,(sal + sal*0.15 + sal*0.1) - sal*0.05 AS total_sal FROM emp;

-- Question:42
-- SELECT deptno,COUNT(ename) FROM emp GROUP BY deptno;

-- Question:43
-- SELECT job,COUNT(ename) FROM emp GROUP BY job;

-- Question:44
-- SELECT deptno,SUM(sal) FROM emp GROUP BY deptno;

-- Question:45
-- SELECT deptno, MAX(sal), MIN(sal) FROM emp GROUP BY deptno;

-- Question:46
-- SELECT job,SUM(sal) FROM emp GROUP BY job;

-- Question:47
-- SELECT job,MIN(sal) FROM emp GROUP BY job;

-- Question:48
-- SELECT deptno,COUNT(*) FROM emp GROUP BY deptno HAVING COUNT(*)>3;

-- Question:49
-- SELECT job,SUM(sal) FROM emp GROUP BY job HAVING SUM(sal)>5000;

-- Question:50
-- SELECT job,COUNT(*) FROM emp GROUP BY job HAVING COUNT(*)>3;

-- Question:51
-- SELECT * FROM emp WHERE sal = (SELECT MAX(sal) FROM emp);

-- Question:52
-- SELECT * FROM emp WHERE job='CLERK' AND sal = (SELECT MAX(sal) FROM emp WHERE job='CLERK');

-- Question:53
-- SELECT * FROM emp WHERE job='SALESMAN' AND sal > (SELECT MAX(sal) FROM emp WHERE job = 'CLERK');

-- Question:54
-- SELECT * FROM emp WHERE job='CLERK' AND sal > (SELECT sal FROM emp WHERE ename='JAMES') AND sal < (SELECT sal FROM emp WHERE ename='SCOTT');

-- Question:55
-- SELECT * FROM emp WHERE sal > (SELECT sal FROM emp WHERE ename='JAMES') AND sal < (SELECT sal FROM emp WHERE ename='SCOTT');

-- Question:56
-- SELECT * FROM emp WHERE sal IN (SELECT MAX(sal) FROM emp GROUP BY deptno);
-- SELECT * FROM emp e WHERE e.sal = (SELECT MAX(sal) FROM emp d WHERE e.deptno=d.deptno);

-- Question:57
-- SELECT * FROM emp e WHERE e.sal = (SELECT MAX(sal) FROM emp j WHERE e.job = j.job);
-- SELECT * FROM emp e WHERE e.sal IN (SELECT MAX(sal) FROM emp GROUP BY job);

-- Question:58
-- SELECT * FROM emp e WHERE e.deptno = (SELECT deptno FROM dept WHERE dname='ACCOUNTING');
-- SELECT * FROM emp e INNER JOIN dept d ON e.deptno=d.deptno HAVING d.dname='ACCOUNTING';

-- Question:59
-- SELECT * FROM emp e WHERE e.deptno = (SELECT d.deptno FROM dept d WHERE d.loc='CHICAGO');
-- SELECT * FROM emp e INNER JOIN dept d ON e.deptno=d.deptno HAVING loc='CHICAGO';

-- Question:60
-- SELECT job,SUM(sal) FROM emp GROUP BY job HAVING SUM(sal) > (SELECT MAX(Sal) FROM emp WHERE job='MANAGER');

-- Question:61
-- SELECT ename FROM emp e WHERE e.deptno=10 AND e.sal > ANY(SELECT o.sal FROM emp o WHERE o.deptno!=e.deptno);

-- Question:62
-- SELECT ename FROM emp e WHERE e.deptno=10 AND e.sal > ALL(SELECT o.sal FROM emp o WHERE o.deptno!=e.deptno);

-- Question:63
-- SELECT UPPER(ename) FROM emp;

-- Question:66
-- SELECT LENGTH("abcdef");

-- Question:67
-- SELECT SUM(LENGTH(ename)) FROM emp;

-- Question:68
-- SELECT CONCAT(empno,ename) FROM emp;

-- Question:69
-- SELECT SUBSTR('oracle',2,3);

-- Question:70
-- SELECT LOCATE('a','computer maintainence corporation',1);

-- Question:71
-- SELECT REPLACE('ALLEN','A','b') FROM emp;

-- Question:72
-- SELECT ename,REPLACE(job,'MANAGER','BOSS') AS job FROM emp;

-- Question:73
-- SELECT e.empno,e.ename,d.dname FROM emp e,dept d WHERE e.deptno=d.deptno;

-- Question:74
-- SELECT DATEDIFF(CURDATE(),'1995-09-16');

-- Question:75
-- SELECT TIMESTAMPDIFF(MONTH,'1995-09-16',CURDATE());

-- Question:80
-- SELECT DATE_SUB(CURDATE(), INTERVAL 3 MONTH);

-- Question:81
-- SELECT job FROM emp WHERE deptno=10 AND job IN (SELECT job FROM emp WHERE deptno=20);

-- Question:82
-- SELECT DISTINCT(job) FROM emp WHERE deptno IN (10,20);

-- Question:83
-- SELECT job FROM emp WHERE deptno=10 AND job NOT IN (SELECT job FROM emp WHERE deptno IN (20,30,40));

-- Question:84
-- SELECT * FROM emp e WHERE e.empno NOT IN (SELECT mgr FROM emp WHERE mgr IS NOT NULL);

-- Question:85
-- SELECT * FROM emp e WHERE e.deptno = (SELECT d.deptno FROM dept d WHERE d.dname='SALES') AND e.sal >= (SELECT g.losal FROM salgrade g WHERE g.grade=3) AND e.sal <= (SELECT g.hisal FROM salgrade g WHERE g.grade=3);

-- Question:86
-- SELECT * FROM emp WHERE empno IN (SELECT mgr FROM emp) OR empno NOT IN (SELECT mgr FROM emp WHERE mgr IS NOT NULL);

-- Question:87
-- SELECT * FROM emp HAVING LENGTH(ename)>=5;

-- Question:88
-- SELECT * FROM dept WHERE dname LIKE 'S%' AND loc LIKE '%O';

-- Question:89
-- SELECT * FROM emp WHERE mgr =(SELECT empno FROM emp WHERE ename='JONES');

-- Question:90
-- SELECT * FROM emp WHERE sal*1.3 > 3000;

-- Question:91
-- SELECT e.ename,d.dname FROM emp e INNER JOIN dept d ON e.deptno=d.deptno;
-- SELECT e.ename,d.dname FROM emp e,dept d WHERE e.deptno=d.deptno;

-- Question:92
-- SELECT e.ename,d.dname FROM emp e, dept d WHERE d.dname='SALES' AND e.deptno=d.deptno;
-- SELECT ename FROM emp WHERE deptno = (SELECT deptno FROM dept WHERE dname='SALES');

-- Question:93
-- SELECT e.ename,d.dname,e.sal FROM emp e,dept d WHERE deptno = (SELECT deptno FROM dept WHERE loc='CHICAGO') AND sal BETWEEN 2000 AND 5000;

-- Question:94
-- SELECT * FROM emp e WHERE e.sal > (SELECT sal FROM emp m WHERE e.mgr=m.empno);

-- Question:95
-- SELECT * FROM emp e WHERE e.deptno = (SELECT m.deptno FROM emp m WHERE e.mgr=m.empno)

-- Question:96
-- SELECT * FROM emp WHERE mgr IS NULL OR mgr=empno;

-- CREATE TABLE emp (
--     empno INT PRIMARY KEY,
--     ename VARCHAR(50),
--     sal DECIMAL(10,2),
--     deptno INT,
--     hiredate DATE
-- );

-- CREATE TABLE salgrade (
--     grade INT PRIMARY KEY,
--     losal DECIMAL(10,2),
--     hisal DECIMAL(10,2)
-- );

-- INSERT INTO emp (empno, ename, sal, deptno, hiredate) VALUES
-- (7839, 'KING', 5000.00, 10, '1981-06-09'),
-- (7566, 'JONES', 2975.00, 30, '1980-06-13'),
-- (7698, 'BLAKE', 2850.00, 30, '1981-07-12'),
-- (7782, 'CLARK', 2450.00, 10, '1981-05-14'),
-- (7788, 'SCOTT', 3000.00, 10, '1982-04-19'),
-- (7902, 'FORD', 3000.00, 20, '1981-12-05'),
-- (7844, 'TURNER', 1500.00, 30, '1981-07-19'),
-- (7900, 'JAMES', 950.00, 30, '1981-06-23'),
-- (7654, 'MARTIN', 1250.00, 30, '1981-12-05');

-- INSERT INTO salgrade (grade, losal, hisal) VALUES
-- (1, 900.00, 1400.00),
-- (2, 1401.00, 2000.00),
-- (3, 2001.00, 3000.00),
-- (4, 3001.00, 4000.00),
-- (5, 4001.00, 5000.00);

-- SELECT * FROM emp;
-- SELECT * FROM salgrade;

-- Question:97
-- SELECT g.grade,e.ename FROM emp e,salgrade g WHERE e.deptno IN (10,30) AND e.hiredate < '1982-12-31' AND g.grade <> 4 AND e.sal > g.losal AND e.sal < g.hisal;

-- Question:99
-- DELETE FROM emp WHERE hiredate < '1980-12-31' AND sal BETWEEN (SELECT losal FROM salgrade WHERE grade=4) AND (SELECT hisal FROM salgrade WHERE grade=4);
-- SELECT * FROM emp;

-- Question:100
-- SELECT e.ename,e.job,d.dname,d.loc FROM emp e,dept d WHERE e.deptno = d.deptno AND e.empno IN (SELECT mgr FROM emp);

------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Question:101
-- SELECT * FROM emp e WHERE e.mgr = (SELECT empno FROM emp WHERE ename='JONES' AND e.mgr=empno);

-- Question:102
-- SELECT ename,sal FROM emp e WHERE sal = (SELECT hisal FROM salgrade WHERE grade = (SELECT grade FROM salgrade WHERE e.sal BETWEEN losal AND hisal));

-- Question:103
-- SELECT e.ename,m.ename FROM emp e, emp m WHERE e.mgr=m.empno;
-- SELECT e.ename,e.job,d.dname,m.ename,g.grade FROM emp e,emp m,dept d,salgrade g WHERE e.mgr=m.empno AND g.grade = (SELECT grade FROM salgrade WHERE e.sal BETWEEN losal AND hisal) AND d.dname = (SELECT dname FROM dept WHERE e.deptno=deptno) ORDER BY d.dname;

-- Question:104
-- SELECT e.empno,e.ename,e.job,e.sal,g.grade,d.dname FROM emp e,dept d,salgrade g WHERE e.job!='CLERK' AND d.dname = (SELECT dname FROM dept WHERE e.deptno=deptno) AND g.grade=(SELECT grade FROM salgrade WHERE e.sal BETWEEN losal AND hisal) ORDER BY e.sal;

-- Question:105
-- SELECT e.ename,e.job,m.ename AS manager FROM emp e,emp m WHERE m.empno=e.mgr UNION SELECT e.ename,e.job,e.mgr FROM emp e WHERE e.mgr IS NULL;

-- Question:106
-- SELECT * FROM emp e ORDER BY sal DESC LIMIT 5;

-- Question:107
-- SELECT * FROM emp WHERE sal = (SELECT MAX(sal) FROM emp);

-- Question:108
-- SELECT * FROM emp WHERE sal = (SELECT (MAX(sal)+MIN(sal))/2 FROM emp);

-- Question:109
-- SELECT COUNT(empno) FROM emp e GROUP BY (SELECT dname FROM dept d WHERE e.deptno=d.deptno) HAVING COUNT(e.empno)>3;
-- SELECT COUNT(e.empno) FROM emp e LEFT JOIN dept d ON e.deptno=d.deptno GROUP BY d.dname HAVING COUNT(e.empno)>3;

-- Question:110
-- SELECT d.dname,(SELECT COUNT(empno) FROM emp GROUP BY deptno HAVING d.deptno=deptno) AS emp_count FROM dept d;
-- SELECT d.dname FROM dept d WHERE d.deptno IN (SELECT deptno FROM emp GROUP BY deptno HAVING COUNT(*)>=3);

-- Question:111
-- SELECT DISTINCT(m.ename),m.sal FROM emp e,emp m WHERE e.mgr=m.empno AND m.sal>(SELECT AVG(sal) FROM emp);
-- SELECT ename,sal FROM emp WHERE empno IN (SELECT mgr FROM emp) AND sal>(SELECT AVG(sal) FROM emp);

-- Question:112
-- SELECT e.ename,e.sal FROM emp e WHERE e.empno IN (SELECT mgr FROM emp) AND e.sal>(SELECT AVG(sal) FROM emp WHERE mgr=e.empno);

-- Question:114
-- SELECT * FROM emp e WHERE e.sal < (SELECT sal FROM emp WHERE e.mgr=empno) AND e.sal > ANY(SELECT sal FROM emp WHERE empno IN(SELECT mgr FROM emp WHERE e.mgr!=mgr));

-- Question:115
-- SELECT ename,total_sal FROM emp e1 CROSS JOIN (SELECT SUM(sal) AS total_sal FROM emp) AS total;

-- Question:116
-- SELECT * FROM emp ORDER BY sal ASC LIMIT 5;

-- Question:117
-- SELECT COUNT(*) FROM emp e WHERE e.sal>(SELECT sal FROM emp WHERE e.mgr=empno);

-- Question:118
-- SELECT * FROM emp e WHERE e.empno IN(SELECT mgr FROM emp) AND e.mgr IN(SELECT empno FROM emp WHERE job!='PRESIDENT');

-- Question:119
-- DELETE FROM dept WHERE deptno NOT IN (SELECT deptno FROM emp);
-- SELECT * FROM dept;

-- Question:120
-- DELETE FROM emp WHERE deptno NOT IN (SELECT deptno FROM dept);
-- SELECT * FROM emp;

-- Question:121
-- SELECT * FROM emp WHERE sal < (SELECT MIN(losal) FROM salgrade) OR sal > (SELECT MAX(hisal) FROM salgrade);

-- Question:131
-- SELECT * FROM emp WHERE deptno IN (SELECT deptno FROM dept WHERE dname IN('RESEARCH','SALES'));

-- Question:132
-- SELECT e.ename,g.grade FROM emp e,salgrade g WHERE e.ename='JONES' AND e.sal BETWEEN g.losal AND g.hisal;
-- SELECT grade FROM salgrade WHERE losal <= (SELECT sal FROM emp WHERE ename='JONES') AND hisal>=(SELECT sal FROM emp WHERE ename='JONES');

-- Question:133
-- SELECT * FROM emp;
-- SELECT * FROM emp WHERE DAY(hiredate)<15;

-- Question:134
-- DELETE FROM emp WHERE deptno IN (SELECT deptno FROM empGROUP BY deptno HAVING COUNT(*)>3);
-- SELECT * FROM emp;

-- Question:135
-- SELECT * FROM emp;
-- SELECT * FROM emp WHERE DATEDIFF(YEAR,hiredate,'2024-10-08')>=21;

-- Question:136
-- SELECT * FROM dept d WHERE LENGTH(d.dname) IN (SELECT COUNT(*) FROM emp e GROUP BY e.deptno HAVING e.deptno!=d.deptno);

-- Question:137
-- SELECT * FROM emp WHERE empno IN (SELECT mgr FROM emp);

-- Question:138
-- SELECT COUNT(*) FROM emp WHERE empno IN (SELECT mgr FROM emp);

-- Question:139
-- SELECT * FROM emp e1 WHERE e1.hiredate IN (SELECT e2.hiredate FROM emp e2 WHERE e1.empno!=e2.empno);

-- Question:140
-- SELECT e.ename,e.sal,g.grade,g.losal,g.hisal FROM emp e,salgrade g WHERE e.sal BETWEEN g.losal AND g.hisal;

-- Question:141
-- SELECT * FROM emp WHERE empno=(SELECT mgr AS num_emp FROM emp GROUP BY mgr ORDER BY COUNT(*) DESC LIMIT 1);

-- Question:142
-- UPDATE emp SET sal=ROUND(sal*1.15);
-- SELECT * FROM emp;

-- Question:146
-- SELECT ROUND(SYSDATE()-hiredate) FROM emp;

-- Question:149
-- SELECT mgr,MAX(sal) FROM emp GROUP BY mgr;
-- SELECT * FROM emp m WHERE m.empno IN (SELECT mgr FROM emp) AND m.sal < (SELECT MAX(e.sal) FROM emp e GROUP BY e.mgr HAVING m.empno=e.mgr);

-- Question:150
-- SELECT * FROM emp WHERE mgr = (SELECT empno FROM emp WHERE ename='BLAKE');

-- Question:151
-- SELECT * FROM emp WHERE empno IN (SELECT mgr FROM emp);

-- Question:152
-- SELECT * FROM emp WHERE mgr = (SELECT empno FROM emp WHERE ename='JONES') UNION SELECT * FROM emp WHERE empno = (SELECT mgr FROM emp WHERE ename='JONES');

-- Question:156
-- SELECT COUNT(*) FROM emp WHERE empno IN (SELECT mgr FROM emp);

-- Question:157
-- SELECT COUNT(empno),COUNT(DISTINCT(empno)) FROM emp HAVING COUNT(empno)=COUNT(DISTINCT(empno));

-- Question:158
-- SELECT mgr,MIN(sal) FROM emp GROUP BY mgr HAVING MIN(sal)>1000 ORDER BY MIN(sal) ASC;

-- Question:159
-- SELECT ename,e.job,e.sal*12 AS annual_sal,d.deptno,g.grade FROM emp e,dept d,salgrade g WHERE e.sal BETWEEN g.losal AND g.hisal AND e.sal*12>30000 AND e.deptno=d.deptno AND e.job!='CLERK';

-- Question:160
-- CREATE TABLE jobs (
--     job_id INT AUTO_INCREMENT PRIMARY KEY,
--     job_name VARCHAR(255),
--     status VARCHAR(50),
--     failure_date DATE
-- );

-- INSERT INTO jobs (job_name, status, failure_date) VALUES
-- ('Job A', 'failed', '1983-02-15'),
-- ('Job B', 'failed', '1983-05-10'),
-- ('Job C', 'failed', '1983-03-22'),
-- ('Job A', 'failed', '1984-01-15'),
-- ('Job B', 'failed', '1984-04-10'),
-- ('Job D', 'failed', '1984-05-01'),
-- ('Job C', 'failed', '1984-03-20');

-- SELECT * FROM jobs;
-- SELECT j1.job_name FROM jobs j1 JOIN jobs j2 ON j1.job_name=j2.job_name WHERE j1.failure_date BETWEEN '1983-01-01' AND '1983-06-30' AND j2.failure_date BETWEEN '1984-01-01' AND '1984-06-30';

-- Question:161
-- CREATE TABLE emp1 (
--     empno INT PRIMARY KEY,
--     ename VARCHAR(255),
--     hiredate DATE,
--     mgr INT
-- );

-- INSERT INTO emp1 (empno, ename, hiredate, mgr) VALUES
-- (1, 'John Doe', '1982-03-15', NULL),   -- Manager (no manager)
-- (2, 'Jane Smith', '1983-06-25', 1),    -- Reports to John Doe
-- (3, 'Alice Johnson', '1985-01-10', 1), -- Reports to John Doe
-- (4, 'Bob Brown', '1983-12-22', 2),     -- Reports to Jane Smith
-- (5, 'Charlie Davis', '1984-07-30', 3); -- Reports to Alice Johnson

-- SELECT * FROM emp1;
-- SELECT * FROM emp1 WHERE hiredate < (SELECT m.hiredate FROM emp1 m WHERE m.empno=mgr);

-- Question:162
-- SELECT e.empno,e.ename,m.empno,m.ename FROM emp e,emp m WHERE m.ename = (SELECT ename FROM emp WHERE empno=e.mgr)
-- UNION
-- SELECT empno,ename,empno,'No Manager' FROM emp WHERE mgr IS NULL;

-- Question:163
-- SELECT ename,job,sal FROM emp WHERE sal IN (SELECT MAX(sal) FROM emp e GROUP BY job) ORDER BY sal DESC;
-- SELECT * FROM emp e1 WHERE e1.sal = (SELECT MAX(e2.sal) FROM emp e2 WHERE e2.job=e1.job) ORDER BY sal DESC;

-- Question:164
-- SELECT * FROM emp e1 WHERE e1.sal = (SELECT MIN(e2.sal) FROM emp e2 WHERE e2.job=e1.job) ORDER BY e1.sal ASC;

-- Question:165
-- CREATE TABLE emp1 (
--     empno INT PRIMARY KEY,
--     ename VARCHAR(255),
--     hiredate DATE,
--     deptno INT
-- );

-- INSERT INTO emp1 (empno, ename, hiredate, deptno) VALUES
-- (1, 'John Doe', '2022-03-15', 10),
-- (2, 'Jane Smith', '2023-06-25', 20),
-- (3, 'Alice Johnson', '2024-01-10', 10),
-- (4, 'Bob Brown', '2023-12-22', 20),
-- (5, 'Charlie Davis', '2024-07-30', 30);

-- SELECT * FROM emp1 WHERE hiredate IN (SELECT MIN(hiredate) FROM emp1 GROUP BY deptno) ORDER BY hiredate;
-- SELECT * FROM emp1 e1 WHERE e1.hiredate = (SELECT MIN(hiredate) FROM emp1 e2 WHERE e2.deptno=e1.deptno) ORDER BY hiredate;

-- Question:166
-- SELECT * FROM emp e1 WHERE e1.sal > (SELECT AVG(sal) FROM emp e2 WHERE e1.deptno=e2.deptno) ORDER BY deptno;
-- SELECT * FROM emp e1 WHERE e1.sal > (SELECT AVG(sal) FROM emp e2 GROUP BY deptno HAVING e1.deptno=e2.deptno) ORDER BY deptno;

-- Question:167
-- SELECT deptno,dname FROM dept d WHERE d.deptno NOT IN (SELECT DISTINCT(deptno) FROM emp);

-- Question:168
-- SELECT deptno,SUM(sal) FROM emp GROUP BY deptno HAVING SUM(sal) = (SELECT MAX(SUM(sal)) FROM emp GROUP BY deptno);

-- Question:170
-- SELECT d.dname,AVG(e.sal) FROM emp e LEFT JOIN dept d ON e.deptno=d.deptno GROUP BY e.deptno;

-- Question:171
-- SELECT ename,hiredate FROM emp1 WHERE hiredate = (SELECT MAX(hiredate) FROM emp1);

-- Question:172
-- SELECT * FROM emp WHERE sal > (SELECT MIN(sal) FROM emp WHERE deptno=30);

-- Question:173
-- SELECT * FROM emp WHERE sal > (SELECT MAX(sal) FROM emp WHERE deptno=30);

-- Question:174
-- SELECT d.dname,e.deptno,SUM(e.sal) FROM emp e LEFT JOIN dept d ON e.deptno=d.deptno GROUP BY e.deptno;

-- Question:175
-- SELECT job,AVG(sal) FROM emp GROUP BY job;

-- Question:176
-- SELECT deptno,COUNT(*) FROM emp GROUP BY deptno HAVING COUNT(*)>3;

-- Question:178
-- CREATE TABLE employees (
--     employee_id INT AUTO_INCREMENT PRIMARY KEY,
--     name VARCHAR(100) NOT NULL,
--     join_date DATE NOT NULL
-- );

-- INSERT INTO employees (name, join_date)
-- VALUES ('John Doe', '2024-08-17');

-- SELECT * FROM employees;
-- SELECT DATEDIFF(DATE_ADD(join_date,INTERVAL 9 MONTH),CURDATE()) AS days_left FROM employees;

-- Question:179
-- SELECT * FROM emp WHERE sal > all(SELECT AVG(sal) FROM emp GROUP BY deptno);

-- Question:180
-- SELECT * FROM emp LIMIT 1 OFFSET 9;

-- Question:181
-- SELECT CONCAT(UPPER(SUBSTR(ename,1,LENGTH(ename)/2)),LOWER(SUBSTR(ename,(LENGTH(ename)/2)+1,LENGTH(ename)))) FROM emp;

-- Question:182
-- SELECT * FROM emp LIMIT 1 OFFSET 9;

-- Question:183
-- DELETE FROM emp WHERE empno = (SELECT e.empno FROM emp e LIMIT 1 OFFSET 9);
-- SELECT * FROM emp;

-- Question:184
-- CREATE TABLE copy_emp AS SELECT * FROM emp;
-- SELECT * FROM copy_emp;

-- Question:185
-- SELECT DISTINCT(e1.ename) FROM emp e1 WHERE e1.ename IN (SELECT e2.ename FROM emp e2 WHERE e1.empno!=e2.empno);

-- Question:186
-- SELECT ename FROM emp ORDER BY ename DESC;

-- Question:187
-- CREATE TABLE emp (
--     empno INT PRIMARY KEY,
--     ename VARCHAR(100),
--     hiredate DATE,
--     sal DECIMAL(10, 2)
-- );

-- CREATE TABLE salgrade (
--     grade INT PRIMARY KEY,
--     losal DECIMAL(10, 2),
--     hisal DECIMAL(10, 2)
-- );

-- INSERT INTO emp (empno, ename, hiredate, sal)
-- VALUES
--     (1, 'John Doe', '2023-03-15', 2500),
--     (2, 'Jane Smith', '2023-03-22', 3000),
--     (3, 'Alice Johnson', '2023-06-10', 4000),
--     (4, 'Bob Brown', '2023-12-05', 5000),
--     (5, 'Charlie White', '2024-03-12', 4500);

-- INSERT INTO salgrade (grade, losal, hisal)
-- VALUES
--     (1, 2000, 2999),
--     (2, 3000, 3999),
--     (3, 4000, 4999),
--     (4, 5000, 5999);

-- SELECT * FROM emp;
-- SELECT * FROM salgrade;

-- SELECT e.ename,e.hiredate FROM emp e WHERE MONTH(e.hiredate) = (SELECT grade FROM salgrade WHERE e.sal BETWEEN losal AND hisal);

-- -- Question:188
-- CREATE TABLE emp (
--     empno INT PRIMARY KEY,
--     ename VARCHAR(100),
--     hiredate DATE,
--     deptno INT
-- );

-- CREATE TABLE dept (
--     deptno INT PRIMARY KEY,
--     dname VARCHAR(100)
-- );

-- INSERT INTO emp (empno, ename, hiredate, deptno)
-- VALUES
--     (1, 'John Doe', '2023-03-15', 15),
--     (2, 'Jane Smith', '2023-04-22', 22),
--     (3, 'Alice Johnson', '2023-05-10', 10),
--     (4, 'Bob Brown', '2023-06-05', 5),
--     (5, 'Charlie White', '2023-07-12', 12);

-- INSERT INTO dept (deptno, dname)
-- VALUES
--     (5, 'Sales'),
--     (10, 'Engineering'),
--     (12, 'Marketing'),
--     (15, 'HR');

-- SELECT * FROM emp;
-- SELECT * FROM dept;
-- SELECT * FROM emp WHERE deptno LIKE DAY(hiredate);

-- Question:189
-- SELECT CONCAT(SUBSTR(ename,1,1)," ",ename) FROM emp;

-- Question:192
-- CREATE VIEW empNo AS SELECT empno FROM emp;
-- SELECT * FROM empNo;

-- Question:193
-- ALTER TABLE emp ADD COLUMN hiredate VARCHAR(20);
-- SELECT * FROM emp;

-- Question:194
-- ALTER TABLE emp ADD CONSTRAINT emp_empno PRIMARY KEY(empno);

-- Question:195
-- ALTER TABLE emp MODIFY COLUMN ename VARCHAR(20);

-- Question:196
-- ALTER TABLE emp ADD COLUMN hiredate DATE;
-- SELECT * FROM emp;

-- Question:197
-- ALTER TABLE emp ADD CONSTRAINT emp_sal CHECK (sal<10000);

-- Question:198
-- ALTER TABLE emp DISABLE CONSTRAINT emp_sal;

-- Question:203
-- ALTER TABLE emp ADD CONSTRAINT FOREIGN KEY (deptno) REFERENCES dept(deptno);

-- Question:204
-- CREATE TABLE new_emp AS SELECT * FROM emp;
-- SELECT * FROM new_emp;

-- Question:205
-- CREATE TABLE new_emp AS SELECT e.empno,e.ename,d.dname FROM emp e,dept d WHERE e.deptno=d.deptno;
-- SELECT * FROM new_emp;

-- Question:206
-- CREATE TABLE emp1 (
--     empno INT PRIMARY KEY,
--     ename VARCHAR(100),
--     hiredate DATE
-- );

-- INSERT INTO emp1 (empno, ename, hiredate)
-- VALUES
--     (1, 'John Doe', '2021-03-15'),
--     (2, 'Jane Smith', '2022-08-22'),
--     (3, 'Alice Johnson', '2019-01-10'),
--     (4, 'Bob Brown', '2020-11-05'),
--     (5, 'Charlie White', '2023-02-12');

-- SELECT * FROM emp1;
-- DELETE FROM emp1 WHERE DATEDIFF(CURDATE(),hiredate)>2*365;
-- SELECT * FROM emp1;

-- Question:207
-- UPDATE emp SET sal=sal+500 WHERE sal<3000;
-- SELECT * FROM emp;

-- Question:209
-- SELECT e.ename,d.dname FROM emp e,dept d WHERE e.deptno=d.deptno;

-- Question:212
-- SELECT e.ename,m.ename FROM emp e, emp m WHERE e.mgr=m.empno;

-- Question:213
-- SELECT dname,SUM(e.sal) FROM emp e INNER JOIN dept d ON e.deptno=d.deptno GROUP BY e.deptno;

-- Question:214
-- SELECT dname,COUNT(*) FROM emp e INNER JOIN dept d ON e.deptno=d.deptno GROUP BY e.deptno;
