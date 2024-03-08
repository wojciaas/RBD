-----Zadanie 01-----
SELECT deptno, ename, empno
FROM emp;
-----Zadanie 02-----
SELECT *
FROM emp;
-----Zadanie 03-----
SELECT ename, sal * 12
FROM emp;
-----Zadanie 04-----
SELECT ename, (sal + 250) * 12
FROM emp;
-----Zadanie 05-----
SELECT ename, sal * 12 AS ROCZNA
FROM emp;
-----Zadanie 06-----
SELECT ename, sal * 12 AS "R PENSJA"
FROM emp;
-----Zadanie 07-----
SELECT empno || ' ' || ename AS EMPLOYEE
FROM emp;
-----Zadanie 08-----
SELECT ename || ' pracuje w dziale ' || deptno AS OPIS
FROM emp;
-----Zadanie 09-----
SELECT ename, (sal + NVL(comm,0)) * 12
FROM emp;
-----Zadanie 10-----
SELECT deptno
FROM emp;
-----Zadanie 11-----
SELECT DISTINCT deptno
FROM emp;
-----Zadanie 12-----
SELECT DISTINCT deptno, job
FROM emp;
-----Zadanie 13-----
SELECT *
FROM emp
ORDER BY ename;
-----Zadanie 14-----
SELECT *
FROM emp
ORDER BY hiredate DESC;
-----Zadanie 15-----
SELECT empno, ename, job, mgr, hiredate, comm, deptno
FROM emp
ORDER BY deptno ASC, sal DESC;
-----Zadanie 16-----
SELECT ename, empno, job, deptno
FROM emp
WHERE job = 'CLERK';
-----Zadanie 17-----
SELECT dname, deptno
FROM dept
WHERE deptno > 20;
-----Zadanie 18-----
SELECT *
FROM emp
WHERE sal < NVL(comm,0);
-----Zadanie 19-----
SELECT *
FROM emp
WHERE sal >= 1000 AND sal <= 2000;
-----Zadanie 20-----
SELECT *
FROM emp
WHERE mgr = 7902 OR mgr = 7566 OR mgr = 7788;
-----Zadanie 21-----
SELECT *
FROM emp
WHERE ename LIKE 'S%';
-----Zadanie 22-----
SELECT *
FROM emp
WHERE ename LIKE '____';
-----Zadanie 23-----
SELECT *
FROM emp
WHERE mgr IS NULL;
-----Zadanie 24-----
SELECT *
FROM emp
WHERE sal < 1000 OR sal > 2000;
-----Zadanie 25-----
SELECT *
FROM emp
WHERE ename NOT LIKE 'M%';
-----Zadanie 26-----
SELECT *
FROM emp
WHERE mgr IS NOT NULL;
-----Zadanie 27-----
SELECT *
FROM emp
WHERE job LIKE 'CLERK' AND (sal >= 1000 AND sal < 2000);
-----Zadanie 28-----
SELECT *
FROM emp
WHERE job LIKE 'CLERK' OR (sal >= 1000 AND sal < 2000);
-----Zadanie 29-----
SELECT * 
FROM emp
WHERE (job LIKE 'MANAGER' AND sal > 1500) OR job LIKE 'SALESMAN'; 
-----Zadanie 30-----
SELECT *
FROM emp
WHERE job LIKE 'MANAGER' OR (job LIKE 'SALESMAN' AND sal > 1500);
-----Zadanie 31-----
SELECT *
FROM emp
WHERE job LIKE 'MANAGER' OR (job LIKE 'CLERK' AND deptno = 10);
-----Zadanie 32-----
SELECT *
FROM salgrade;
-----Zadanie 33-----
SELECT *
FROM dept;
-----Zadanie 34-----
SELECT deptno, dname
FROM dept
ORDER BY deptno;
-----Zadanie 35-----
SELECT DISTINCT job
FROM emp;
-----Zadanie 36-----
SELECT *
FROM emp
WHERE deptno = 10 OR deptno = 20
ORDER BY ename;
-----Zadanie 37-----
SELECT ename
FROM emp
WHERE ename LIKE '%TH%' OR ename LIKE '%LL%';
-----Zadanie 38-----
SELECT ename, deptno, hiredate
FROM emp
WHERE hiredate LIKE '%80%';
-----Zadanie 39-----
SELECT ename, sal * 12, comm
FROM emp
WHERE job LIKE 'SALESMAN' AND sal > NVL(comm, 0)
ORDER BY sal DESC, ename ASC;