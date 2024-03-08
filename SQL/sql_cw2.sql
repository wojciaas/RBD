--Zadanie 01--
SELECT *
FROM emp, dept
WHERE emp.deptno = dept.deptno;
--Zadanie 02--
SELECT *
FROM emp
INNER JOIN dept ON emp.deptno = dept.deptno;
--Zadanie 03--
SELECT emp.ename, dept.dname
FROM emp
INNER JOIN dept ON emp.deptno = dept.deptno
ORDER BY emp.ename;
--Zadanie 04--
SELECT emp.ename, dept.deptno, dept.dname
FROM emp
INNER JOIN dept ON emp.deptno = dept.deptno; 
--Zadanie 05--
SELECT emp.ename, dept.loc, dept.dname
FROM emp
INNER JOIN dept ON emp.deptno = dept.deptno
WHERE emp.sal > 1500;
--Zadanie 06--
SELECT emp.ename, emp.job, emp.sal, salgrade.grade
FROM emp
INNER JOIN salgrade ON emp.sal BETWEEN salgrade.losal AND salgrade.hisal;
--Zadanie 07--
SELECT emp.*
FROM emp
INNER JOIN salgrade ON emp.sal BETWEEN salgrade.losal AND salgrade.hisal
WHERE salgrade.grade = 3;
--Zadanie 08--
SELECT emp.*
FROM emp
INNER JOIN dept ON emp.deptno = dept.deptno
WHERE dept.loc LIKE 'DALLAS';
--Zadanie 09--
SELECT emp.ename, dept.dname, salgrade.grade
FROM emp
INNER JOIN dept ON emp.deptno = dept.deptno
INNER JOIN salgrade ON emp.sal BETWEEN salgrade.losal AND salgrade.hisal;
--Zadanie 10--
SELECT dept.*, emp.ename
FROM dept
LEFT OUTER JOIN emp ON dept.deptno = emp.deptno;
--Zadanie 11--
SELECT dept.*, emp.ename
FROM dept
RIGHT OUTER JOIN emp ON dept.deptno = emp.deptno;
--Zadanie 12--
SELECT emp.ename, emp.sal, emp.deptno
FROM emp
INNER JOIN dept ON emp.deptno = dept.deptno
WHERE emp.deptno = 30

UNION

SELECT emp.ename, null, emp.deptno
FROM emp
INNER JOIN dept ON emp.deptno = dept.deptno
WHERE emp.deptno = 20;
--Zadanie 13--
SELECT emp.job
FROM emp
WHERE emp.deptno = 10

UNION

SELECT emp.job
FROM emp
WHERE emp.deptno = 30;
--Zadanie 14--
SELECT emp.job
FROM emp
WHERE emp.deptno = 10

INTERSECT

SELECT emp.job
FROM emp
WHERE emp.deptno = 30;
--Zadanie 15--
SELECT emp.job
FROM emp
WHERE emp.deptno = 10

MINUS

SELECT emp.job
FROM emp
WHERE emp.deptno = 30;
--Zadanie 16--
SELECT e1.*
FROM emp e1
INNER JOIN emp e2 ON e2.empno = e1.mgr
WHERE e1.sal < e2.sal;
--Zadanie 17--
SELECT e1.ename, e2.ename
FROM emp e1
INNER JOIN emp e2 ON e1.mgr = e2.empno
ORDER BY e2.ename;