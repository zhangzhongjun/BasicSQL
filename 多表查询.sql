/*
1. 查出至少有一个员工的部门。显示部门编号、部门名称、部门位置、部门人数。
列：d.deptno, d.dname, d.loc, 部门人数
表：dept d, emp e
条件：e.deptno=d.deptno
*/
SELECT d.*, z1.cnt 
FROM dept d, (SELECT deptno, COUNT(*) cnt FROM emp GROUP BY deptno) z1
WHERE d.deptno = z1.deptno


/*
3. 列出所有员工的姓名及其直接上级的姓名。
列：员工姓名、上级姓名
表：emp e, emp m
条件：员工的mgr = 上级的empno
*/
SELECT * 
FROM emp e, emp m
WHERE e.mgr=m.empno

SELECT e.ename, IFNULL(m.ename, 'BOSS') 领导
FROM emp e LEFT OUTER JOIN emp m
ON e.mgr=m.empno


/*
4. 列出受雇日期早于直接上级的所有员工的编号、姓名、部门名称。
列：e.empno, e.ename, d.dname
表：emp e, emp m, dept d
条件：e.hiredate<m.hiredate
思路：
1. 先不查部门名称，只查部门编号!
列：e.empno, e.ename, e.deptno
表：emp e, emp m
条件：e.mgr=m.empno, e.hiredate<m.hireadate
*/
SELECT e.empno, e.ename, e.deptno
FROM emp e, emp m
WHERE e.mgr=m.empno AND e.hiredate<m.hiredate


SELECT e.empno, e.ename, d.dname
FROM emp e, emp m, dept d
WHERE e.mgr=m.empno AND e.hiredate<m.hiredate AND e.deptno=d.deptno

-- 另外一种思路
SELECT e.empno , e.ename , d.dname
FROM emp e
	INNER JOIN emp m ON e.mgr=m.empno
	INNER JOIN dept d ON e.deptno=d.deptno
WHERE e.hiredate < m.hiredate;

/*
5. 列出部门名称和这些部门的员工信息，同时列出那些没有员工的部门。
列：e.* d.dname 
表：emp e, dept d
条件：e.deptno=d.deptno
*/
SELECT e.* d.dname 
FROM emp e RIGHT OUTER JOIN dept d
ON e.deptno=d.deptno

/*
7. 列出最低薪金大于15000的各种工作及从事此工作的员工人数。
列：job, count(*)
表：emp e
条件：min(sal) > 15000
分组：job
*/
SELECT job, COUNT(*)
FROM emp e
GROUP BY job
HAVING MIN(sal) > 15000


/*
8. 列出在销售部工作的员工的姓名，假定不知道销售部的部门编号。
列：e.ename
表：emp
条件：e.deptno=(select deptno from dept where dname='销售部')
*/

SELECT e.ename
FROM emp e
WHERE e.deptno=(SELECT deptno FROM dept WHERE dname='销售部')

/* 另外一种思路
列：e.ename 
表：emp e  ,dept d
条件：e.deptno=d.deptno   and  d.dname='销售部'   
*/

SELECT e.ename
FROM emp e,dept d
WHERE e.deptno = d.deptno and d.dname = '销售部'



-- 一行一列
/*
10.列出与庞统从事相同工作的所有员工及部门名称。		
列：e.*, d.dname
表：emp e, dept d
条件：job=(查询出庞统的工作)
*/

/*首先查询部门编号
列：e.*	e.deptno
表：emp e
条件：job=(select job from emp where ename='庞统')
*/
SELECT e.*,e.deptno
FROM emp
WHERE job=(SELECT job FROM emp WHERE ename='庞统')

/*
列：e.* d.dname
表：emp e,dept d
条件：e.deptno=d.deptno
*/
SELECT e.*, d.dname
FROM emp e INNER JOIN dept d
ON e.deptno=d.deptno AND job=(SELECT job FROM emp WHERE ename='庞统')


-- 多行一列
/*
11.列出薪金高于在部门30工作的所有员工的薪金　的员工姓名和薪金、部门名称。
列：e.ename, e.sal, d.dname
表：emp e, dept d
条件；sal>all (30部门薪金)
*/

/*先查询处部门的id
列：e.ename e.sal e.deptno
表：emp e
条件：sal > all(select sal from emp where deptno=30)
*/
SELECT e.ename,e.sal,e.deptno
FROM emp e
WHERE sal > ALL (SELECT sal FROM emp WHERE deptno=30)


SELECT e.ename, e.sal, d.dname
FROM emp e, dept d
WHERE e.deptno=d.deptno AND sal > ALL (SELECT sal FROM emp WHERE deptno=30)


/*
9. 列出薪金高于公司平均薪金的所有员工信息，所在部门名称，上级领导，工资等级。
*/

/*
第一步：工资大于公司平均工资的员工姓名
列：e.*
表：emp e
条件：e.salary > avg(select salary from e)
*/
SELECT e.*
FROM emp e
WHERE e.sal > (SELECT AVG(sal) FROM emp)

/*
第二步：查询处所在的部门名称
列： e.* , dept.dname
表：emp e,dept d
条件：e.deptno = d.deptno
*/
SELECT e.*,d.dname
FROM emp e,dept d
WHERE e.sal>(SELECT AVG(sal) FROM emp) AND e.deptno=d.deptno;

/*
第三步：查询上级领导
列：e.* , dept.dname , m.ename
表：emp e,dept d,emp m
条件：e.mgr=m.empno
*/
SELECT e.*,d.dname,m.ename
FROM emp e,dept d,emp m
WHERE e.sal>(SELECT AVG(sal) FROM emp) AND e.deptno=d.deptno AND e.mgr=m.empno;

/*
第四步：查询工资等级
列：e.* , dept.dname , m.ename , s.grade
表：emp e,emp m,dept d,salary s
条件：e.sal between s.low and s.high
*/
SELECT e.*,d.dname,m.ename,s.grade
FROM emp e,dept d,emp m,salary s
WHERE e.sal>(SELECT AVG(sal) FROM emp) AND e.deptno=d.deptno AND e.mgr=m.empno AND e.sal between s.low and s.high;


SELECT e.*, d.dname, m.ename, s.grade
FROM 
  emp e LEFT OUTER JOIN dept d ON e.deptno=d.deptno
        LEFT OUTER JOIN emp m ON e.mgr=m.empno
        LEFT OUTER JOIN salgrade s ON e.sal BETWEEN s.losal AND s.hisal
WHERE e.sal>(SELECT AVG(sal) FROM emp)


