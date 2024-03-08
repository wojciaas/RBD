--Zadanie01--
SELECT *
FROM emp e1
WHERE sal = (SELECT MIN(sal) FROM emp e2 WHERE e1.job = e2.job);
--Zadanie02--
SELECT *
FROM emp e1
WHERE sal > (SELECT AVG(sal) FROM emp e2 WHERE e1.deptno = e2.deptno);
--Zadanie03--
SELECT *
FROM emp e1
WHERE EXISTS (SELECT * FROM emp e2 WHERE e1.empno = e2.mgr);
--Zadanie04--
SELECT *
FROM emp e1
WHERE NOT EXISTS (SELECT * FROM emp e2 WHERE e1.deptno = e2.deptno);
--Zadanie05--
SELECT *
FROM emp e1
WHERE hiredate = (SELECT MIN(hiredate) FROM emp e2 WHERE e1.deptno = e2.deptno)
ORDER BY hiredate;
--Zadanie06--
SELECT ename, sal, deptno
FROM emp e1
WHERE sal > (SELECT AVG(sal) FROM emp e2 WHERE e1.job = e2.job);
--Zadanie07--
SELECT *
FROM dept
WHERE NOT EXISTS (SELECT empno FROM emp WHERE emp.deptno = dept.deptno);
--Zadanie08--
SELECT *
FROM emp e1
WHERE 5 = (SELECT COUNT(deptno) FROM emp e2 WHERE e1.deptno = e2.deptno);
--Zadanie09--
SELECT *
FROM emp e1
WHERE sal > (SELECT sal FROM emp e2 WHERE e1.mgr = e2.empno);
--Zadanie10--
SELECT ename, (SELECT COUNT(*)-1 FROM emp e2 WHERE EXTRACT(YEAR FROM e1.hiredate) = EXTRACT(YEAR FROM e2.hiredate))
FROM emp e1;