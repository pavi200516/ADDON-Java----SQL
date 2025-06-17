mysql> create table Emp;
ERROR 1046 (3D000): No database selected
mysql> create database kgcas;
Query OK, 1 row affected (0.01 sec)

mysql> use kgcas;
Database changed
mysql> DROP TABLE IF EXISTS emp;
Query OK, 0 rows affected, 1 warning (0.01 sec)

mysql>
mysql> CREATE TABLE emp (
    ->   empno decimal(4,0) NOT NULL,
    ->   ename varchar(10) default NULL,
    ->   job varchar(9) default NULL,
    ->   mgr decimal(4,0) default NULL,
    ->   hiredate date default NULL,
    ->   sal decimal(7,2) default NULL,
    ->   comm decimal(7,2) default NULL,
    ->   deptno decimal(2,0) default NULL
    -> );
Query OK, 0 rows affected (0.02 sec)

mysql>
mysql> DROP TABLE IF EXISTS dept;
Query OK, 0 rows affected, 1 warning (0.00 sec)

mysql>
mysql> CREATE TABLE dept (
    ->   deptno decimal(2,0) default NULL,
    ->   dname varchar(14) default NULL,
    ->   loc varchar(13) default NULL
    -> );
Query OK, 0 rows affected (0.01 sec)

mysql>
mysql> INSERT INTO emp VALUES ('7369','SMITH','CLERK','7902','1980-12-17','800.00',NULL,'20');
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO emp VALUES ('7499','ALLEN','SALESMAN','7698','1981-02-20','1600.00','300.00','30');
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO emp VALUES ('7521','WARD','SALESMAN','7698','1981-02-22','1250.00','500.00','30');
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO emp VALUES ('7566','JONES','MANAGER','7839','1981-04-02','2975.00',NULL,'20');
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO emp VALUES ('7654','MARTIN','SALESMAN','7698','1981-09-28','1250.00','1400.00','30');
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO emp VALUES ('7698','BLAKE','MANAGER','7839','1981-05-01','2850.00',NULL,'30');
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO emp VALUES ('7782','CLARK','MANAGER','7839','1981-06-09','2450.00',NULL,'10');
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO emp VALUES ('7788','SCOTT','ANALYST','7566','1982-12-09','3000.00',NULL,'20');
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO emp VALUES ('7839','KING','PRESIDENT',NULL,'1981-11-17','5000.00',NULL,'10');
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO emp VALUES ('7844','TURNER','SALESMAN','7698','1981-09-08','1500.00','0.00','30');
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO emp VALUES ('7876','ADAMS','CLERK','7788','1983-01-12','1100.00',NULL,'20');
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO emp VALUES ('7900','JAMES','CLERK','7698','1981-12-03','950.00',NULL,'30');
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO emp VALUES ('7902','FORD','ANALYST','7566','1981-12-03','3000.00',NULL,'20');
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO emp VALUES ('7934','MILLER','CLERK','7782','1982-01-23','1300.00',NULL,'10');
Query OK, 1 row affected (0.00 sec)

mysql>
mysql> INSERT INTO dept VALUES ('10','ACCOUNTING','NEW YORK');
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO dept VALUES ('20','RESEARCH','DALLAS');
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO dept VALUES ('30','SALES','CHICAGO');
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO dept VALUES ('40','OPERATIONS','BOSTON');
Query OK, 1 row affected (0.00 sec)

mysql> select* from emp;
+-------+--------+-----------+------+------------+---------+---------+--------+
| empno | ename  | job       | mgr  | hiredate   | sal     | comm    | deptno |
+-------+--------+-----------+------+------------+---------+---------+--------+
|  7369 | SMITH  | CLERK     | 7902 | 1980-12-17 |  800.00 |    NULL |     20 |
|  7499 | ALLEN  | SALESMAN  | 7698 | 1981-02-20 | 1600.00 |  300.00 |     30 |
|  7521 | WARD   | SALESMAN  | 7698 | 1981-02-22 | 1250.00 |  500.00 |     30 |
|  7566 | JONES  | MANAGER   | 7839 | 1981-04-02 | 2975.00 |    NULL |     20 |
|  7654 | MARTIN | SALESMAN  | 7698 | 1981-09-28 | 1250.00 | 1400.00 |     30 |
|  7698 | BLAKE  | MANAGER   | 7839 | 1981-05-01 | 2850.00 |    NULL |     30 |
|  7782 | CLARK  | MANAGER   | 7839 | 1981-06-09 | 2450.00 |    NULL |     10 |
|  7788 | SCOTT  | ANALYST   | 7566 | 1982-12-09 | 3000.00 |    NULL |     20 |
|  7839 | KING   | PRESIDENT | NULL | 1981-11-17 | 5000.00 |    NULL |     10 |
|  7844 | TURNER | SALESMAN  | 7698 | 1981-09-08 | 1500.00 |    0.00 |     30 |
|  7876 | ADAMS  | CLERK     | 7788 | 1983-01-12 | 1100.00 |    NULL |     20 |
|  7900 | JAMES  | CLERK     | 7698 | 1981-12-03 |  950.00 |    NULL |     30 |
|  7902 | FORD   | ANALYST   | 7566 | 1981-12-03 | 3000.00 |    NULL |     20 |
|  7934 | MILLER | CLERK     | 7782 | 1982-01-23 | 1300.00 |    NULL |     10 |
+-------+--------+-----------+------+------------+---------+---------+--------+
14 rows in set (0.00 sec)

mysql> select *
    -> from emp
    -> where sal >=2000;
+-------+-------+-----------+------+------------+---------+------+--------+
| empno | ename | job       | mgr  | hiredate   | sal     | comm | deptno |
+-------+-------+-----------+------+------------+---------+------+--------+
|  7566 | JONES | MANAGER   | 7839 | 1981-04-02 | 2975.00 | NULL |     20 |
|  7698 | BLAKE | MANAGER   | 7839 | 1981-05-01 | 2850.00 | NULL |     30 |
|  7782 | CLARK | MANAGER   | 7839 | 1981-06-09 | 2450.00 | NULL |     10 |
|  7788 | SCOTT | ANALYST   | 7566 | 1982-12-09 | 3000.00 | NULL |     20 |
|  7839 | KING  | PRESIDENT | NULL | 1981-11-17 | 5000.00 | NULL |     10 |
|  7902 | FORD  | ANALYST   | 7566 | 1981-12-03 | 3000.00 | NULL |     20 |
+-------+-------+-----------+------+------------+---------+------+--------+
6 rows in set (0.00 sec)

mysql> select ename , sal , sal*12
    -> from emp
    -> where sal*12 >=12000
    ->
    -> select ename , sal , sal*12
    -> from emp
    -> where sal*12 >=12000;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'select ename , sal , sal*12
from emp
where sal*12 >=12000' at line 5
mysql> select ename , sal , sal*12
    -> from emp
    -> where sal*12 >=12000;
+--------+---------+----------+
| ename  | sal     | sal*12   |
+--------+---------+----------+
| ALLEN  | 1600.00 | 19200.00 |
| WARD   | 1250.00 | 15000.00 |
| JONES  | 2975.00 | 35700.00 |
| MARTIN | 1250.00 | 15000.00 |
| BLAKE  | 2850.00 | 34200.00 |
| CLARK  | 2450.00 | 29400.00 |
| SCOTT  | 3000.00 | 36000.00 |
| KING   | 5000.00 | 60000.00 |
| TURNER | 1500.00 | 18000.00 |
| ADAMS  | 1100.00 | 13200.00 |
| FORD   | 3000.00 | 36000.00 |
| MILLER | 1300.00 | 15600.00 |
+--------+---------+----------+
12 rows in set (0.00 sec)

mysql> select ename , job
    -> from emp
    -> where job = 'clerk';
+--------+-------+
| ename  | job   |
+--------+-------+
| SMITH  | CLERK |
| ADAMS  | CLERK |
| JAMES  | CLERK |
| MILLER | CLERK |
+--------+-------+
4 rows in set (0.00 sec)

mysql> select *
    -> from emp
    -> where sal>=2000
    -> where sal>=2000;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'where sal>=2000' at line 4
mysql> select *
    -> from emp
    -> where sal>=2000;
+-------+-------+-----------+------+------------+---------+------+--------+
| empno | ename | job       | mgr  | hiredate   | sal     | comm | deptno |
+-------+-------+-----------+------+------------+---------+------+--------+
|  7566 | JONES | MANAGER   | 7839 | 1981-04-02 | 2975.00 | NULL |     20 |
|  7698 | BLAKE | MANAGER   | 7839 | 1981-05-01 | 2850.00 | NULL |     30 |
|  7782 | CLARK | MANAGER   | 7839 | 1981-06-09 | 2450.00 | NULL |     10 |
|  7788 | SCOTT | ANALYST   | 7566 | 1982-12-09 | 3000.00 | NULL |     20 |
|  7839 | KING  | PRESIDENT | NULL | 1981-11-17 | 5000.00 | NULL |     10 |
|  7902 | FORD  | ANALYST   | 7566 | 1981-12-03 | 3000.00 | NULL |     20 |
+-------+-------+-----------+------+------------+---------+------+--------+
6 rows in set (0.00 sec)

mysql> select *
    -> from emp
    -> where deptno =30 or job=analyst
    ->
    -> select *
    -> from emp
    -> where deptno =30 or job=analyst;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'select *
from emp
where deptno =30 or job=analyst' at line 5
mysql> select *
    -> from emp
    -> where deptno =30 or job=analyst;
ERROR 1054 (42S22): Unknown column 'analyst' in 'where clause'
mysql> select *
    -> from emp
    -> where deptno =30 or job='ANALYST';
+-------+--------+----------+------+------------+---------+---------+--------+
| empno | ename  | job      | mgr  | hiredate   | sal     | comm    | deptno |
+-------+--------+----------+------+------------+---------+---------+--------+
|  7499 | ALLEN  | SALESMAN | 7698 | 1981-02-20 | 1600.00 |  300.00 |     30 |
|  7521 | WARD   | SALESMAN | 7698 | 1981-02-22 | 1250.00 |  500.00 |     30 |
|  7654 | MARTIN | SALESMAN | 7698 | 1981-09-28 | 1250.00 | 1400.00 |     30 |
|  7698 | BLAKE  | MANAGER  | 7839 | 1981-05-01 | 2850.00 |    NULL |     30 |
|  7788 | SCOTT  | ANALYST  | 7566 | 1982-12-09 | 3000.00 |    NULL |     20 |
|  7844 | TURNER | SALESMAN | 7698 | 1981-09-08 | 1500.00 |    0.00 |     30 |
|  7900 | JAMES  | CLERK    | 7698 | 1981-12-03 |  950.00 |    NULL |     30 |
|  7902 | FORD   | ANALYST  | 7566 | 1981-12-03 | 3000.00 |    NULL |     20 |
+-------+--------+----------+------+------------+---------+---------+--------+
8 rows in set (0.00 sec)

mysql> select*
    -> from emp
    -> where job='clerk' and sal<1500;
+-------+--------+-------+------+------------+---------+------+--------+
| empno | ename  | job   | mgr  | hiredate   | sal     | comm | deptno |
+-------+--------+-------+------+------------+---------+------+--------+
|  7369 | SMITH  | CLERK | 7902 | 1980-12-17 |  800.00 | NULL |     20 |
|  7876 | ADAMS  | CLERK | 7788 | 1983-01-12 | 1100.00 | NULL |     20 |
|  7900 | JAMES  | CLERK | 7698 | 1981-12-03 |  950.00 | NULL |     30 |
|  7934 | MILLER | CLERK | 7782 | 1982-01-23 | 1300.00 | NULL |     10 |
+-------+--------+-------+------+------------+---------+------+--------+
4 rows in set (0.00 sec)

mysql> select ename
    -> from emp
    -> where ename like  'a%';
+-------+
| ename |
+-------+
| ALLEN |
| ADAMS |
+-------+
2 rows in set (0.00 sec)

mysql> select ename
    -> from emp
    -> where ename like  'a%n';
+-------+
| ename |
+-------+
| ALLEN |
+-------+
1 row in set (0.00 sec)

mysql> select ename
    -> from emp
    -> where ename like  'a%h';
Empty set (0.00 sec)

mysql> select ename
    -> from emp
    -> where ename like  '%H';
+-------+
| ename |
+-------+
| SMITH |
+-------+
1 row in set (0.00 sec)

mysql> select ename
    -> from emp
    -> where ename like 'A___N';
+-------+
| ename |
+-------+
| ALLEN |
+-------+
1 row in set (0.00 sec)

mysql> select ename , sal
    -> from emp
    -> where sal like '___.__';
+-------+--------+
| ename | sal    |
+-------+--------+
| SMITH | 800.00 |
| JAMES | 950.00 |
+-------+--------+
2 rows in set (0.00 sec)

mysql> select*
    -> from emp
    -> where deptno =20 or deptno=30;
+-------+--------+----------+------+------------+---------+---------+--------+
| empno | ename  | job      | mgr  | hiredate   | sal     | comm    | deptno |
+-------+--------+----------+------+------------+---------+---------+--------+
|  7369 | SMITH  | CLERK    | 7902 | 1980-12-17 |  800.00 |    NULL |     20 |
|  7499 | ALLEN  | SALESMAN | 7698 | 1981-02-20 | 1600.00 |  300.00 |     30 |
|  7521 | WARD   | SALESMAN | 7698 | 1981-02-22 | 1250.00 |  500.00 |     30 |
|  7566 | JONES  | MANAGER  | 7839 | 1981-04-02 | 2975.00 |    NULL |     20 |
|  7654 | MARTIN | SALESMAN | 7698 | 1981-09-28 | 1250.00 | 1400.00 |     30 |
|  7698 | BLAKE  | MANAGER  | 7839 | 1981-05-01 | 2850.00 |    NULL |     30 |
|  7788 | SCOTT  | ANALYST  | 7566 | 1982-12-09 | 3000.00 |    NULL |     20 |
|  7844 | TURNER | SALESMAN | 7698 | 1981-09-08 | 1500.00 |    0.00 |     30 |
|  7876 | ADAMS  | CLERK    | 7788 | 1983-01-12 | 1100.00 |    NULL |     20 |
|  7900 | JAMES  | CLERK    | 7698 | 1981-12-03 |  950.00 |    NULL |     30 |
|  7902 | FORD   | ANALYST  | 7566 | 1981-12-03 | 3000.00 |    NULL |     20 |
+-------+--------+----------+------+------------+---------+---------+--------+
11 rows in set (0.00 sec)

mysql> select*
    -> from emp
    -> where deptno =20 or deptno=30 or deptno=30 or deptno=40;
+-------+--------+----------+------+------------+---------+---------+--------+
| empno | ename  | job      | mgr  | hiredate   | sal     | comm    | deptno |
+-------+--------+----------+------+------------+---------+---------+--------+
|  7369 | SMITH  | CLERK    | 7902 | 1980-12-17 |  800.00 |    NULL |     20 |
|  7499 | ALLEN  | SALESMAN | 7698 | 1981-02-20 | 1600.00 |  300.00 |     30 |
|  7521 | WARD   | SALESMAN | 7698 | 1981-02-22 | 1250.00 |  500.00 |     30 |
|  7566 | JONES  | MANAGER  | 7839 | 1981-04-02 | 2975.00 |    NULL |     20 |
|  7654 | MARTIN | SALESMAN | 7698 | 1981-09-28 | 1250.00 | 1400.00 |     30 |
|  7698 | BLAKE  | MANAGER  | 7839 | 1981-05-01 | 2850.00 |    NULL |     30 |
|  7788 | SCOTT  | ANALYST  | 7566 | 1982-12-09 | 3000.00 |    NULL |     20 |
|  7844 | TURNER | SALESMAN | 7698 | 1981-09-08 | 1500.00 |    0.00 |     30 |
|  7876 | ADAMS  | CLERK    | 7788 | 1983-01-12 | 1100.00 |    NULL |     20 |
|  7900 | JAMES  | CLERK    | 7698 | 1981-12-03 |  950.00 |    NULL |     30 |
|  7902 | FORD   | ANALYST  | 7566 | 1981-12-03 | 3000.00 |    NULL |     20 |
+-------+--------+----------+------+------------+---------+---------+--------+
11 rows in set (0.00 sec)

mysql> select ename
    -> from emp
    -> where deptno =20 or deptno=30 or deptno=30 or deptno=40;
+--------+
| ename  |
+--------+
| SMITH  |
| ALLEN  |
| WARD   |
| JONES  |
| MARTIN |
| BLAKE  |
| SCOTT  |
| TURNER |
| ADAMS  |
| JAMES  |
| FORD   |
+--------+
11 rows in set (0.00 sec)

mysql> select*
    -> from emp
    -> where deptno in (10,20,30,40);
+-------+--------+-----------+------+------------+---------+---------+--------+
| empno | ename  | job       | mgr  | hiredate   | sal     | comm    | deptno |
+-------+--------+-----------+------+------------+---------+---------+--------+
|  7369 | SMITH  | CLERK     | 7902 | 1980-12-17 |  800.00 |    NULL |     20 |
|  7499 | ALLEN  | SALESMAN  | 7698 | 1981-02-20 | 1600.00 |  300.00 |     30 |
|  7521 | WARD   | SALESMAN  | 7698 | 1981-02-22 | 1250.00 |  500.00 |     30 |
|  7566 | JONES  | MANAGER   | 7839 | 1981-04-02 | 2975.00 |    NULL |     20 |
|  7654 | MARTIN | SALESMAN  | 7698 | 1981-09-28 | 1250.00 | 1400.00 |     30 |
|  7698 | BLAKE  | MANAGER   | 7839 | 1981-05-01 | 2850.00 |    NULL |     30 |
|  7782 | CLARK  | MANAGER   | 7839 | 1981-06-09 | 2450.00 |    NULL |     10 |
|  7788 | SCOTT  | ANALYST   | 7566 | 1982-12-09 | 3000.00 |    NULL |     20 |
|  7839 | KING   | PRESIDENT | NULL | 1981-11-17 | 5000.00 |    NULL |     10 |
|  7844 | TURNER | SALESMAN  | 7698 | 1981-09-08 | 1500.00 |    0.00 |     30 |
|  7876 | ADAMS  | CLERK     | 7788 | 1983-01-12 | 1100.00 |    NULL |     20 |
|  7900 | JAMES  | CLERK     | 7698 | 1981-12-03 |  950.00 |    NULL |     30 |
|  7902 | FORD   | ANALYST   | 7566 | 1981-12-03 | 3000.00 |    NULL |     20 |
|  7934 | MILLER | CLERK     | 7782 | 1982-01-23 | 1300.00 |    NULL |     10 |
+-------+--------+-----------+------+------------+---------+---------+--------+
14 rows in set (0.00 sec)

mysql> select ename
    -> from emp
    -> where deptno in (10,20,30,40);
+--------+
| ename  |
+--------+
| SMITH  |
| ALLEN  |
| WARD   |
| JONES  |
| MARTIN |
| BLAKE  |
| CLARK  |
| SCOTT  |
| KING   |
| TURNER |
| ADAMS  |
| JAMES  |
| FORD   |
| MILLER |
+--------+
14 rows in set (0.00 sec)

mysql> select*
    -> from emp
    -> where not in(10 or 30);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'in(10 or 30)' at line 3
mysql> select*
    ->
    -> from emp
    -> where deptno not in(10 or 30);
+-------+--------+-----------+------+------------+---------+---------+--------+
| empno | ename  | job       | mgr  | hiredate   | sal     | comm    | deptno |
+-------+--------+-----------+------+------------+---------+---------+--------+
|  7369 | SMITH  | CLERK     | 7902 | 1980-12-17 |  800.00 |    NULL |     20 |
|  7499 | ALLEN  | SALESMAN  | 7698 | 1981-02-20 | 1600.00 |  300.00 |     30 |
|  7521 | WARD   | SALESMAN  | 7698 | 1981-02-22 | 1250.00 |  500.00 |     30 |
|  7566 | JONES  | MANAGER   | 7839 | 1981-04-02 | 2975.00 |    NULL |     20 |
|  7654 | MARTIN | SALESMAN  | 7698 | 1981-09-28 | 1250.00 | 1400.00 |     30 |
|  7698 | BLAKE  | MANAGER   | 7839 | 1981-05-01 | 2850.00 |    NULL |     30 |
|  7782 | CLARK  | MANAGER   | 7839 | 1981-06-09 | 2450.00 |    NULL |     10 |
|  7788 | SCOTT  | ANALYST   | 7566 | 1982-12-09 | 3000.00 |    NULL |     20 |
|  7839 | KING   | PRESIDENT | NULL | 1981-11-17 | 5000.00 |    NULL |     10 |
|  7844 | TURNER | SALESMAN  | 7698 | 1981-09-08 | 1500.00 |    0.00 |     30 |
|  7876 | ADAMS  | CLERK     | 7788 | 1983-01-12 | 1100.00 |    NULL |     20 |
|  7900 | JAMES  | CLERK     | 7698 | 1981-12-03 |  950.00 |    NULL |     30 |
|  7902 | FORD   | ANALYST   | 7566 | 1981-12-03 | 3000.00 |    NULL |     20 |
|  7934 | MILLER | CLERK     | 7782 | 1982-01-23 | 1300.00 |    NULL |     10 |
+-------+--------+-----------+------+------------+---------+---------+--------+
14 rows in set (0.00 sec)

mysql> select*
    -> from emp
    -> where deptno not in (10,30);
+-------+-------+---------+------+------------+---------+------+--------+
| empno | ename | job     | mgr  | hiredate   | sal     | comm | deptno |
+-------+-------+---------+------+------------+---------+------+--------+
|  7369 | SMITH | CLERK   | 7902 | 1980-12-17 |  800.00 | NULL |     20 |
|  7566 | JONES | MANAGER | 7839 | 1981-04-02 | 2975.00 | NULL |     20 |
|  7788 | SCOTT | ANALYST | 7566 | 1982-12-09 | 3000.00 | NULL |     20 |
|  7876 | ADAMS | CLERK   | 7788 | 1983-01-12 | 1100.00 | NULL |     20 |
|  7902 | FORD  | ANALYST | 7566 | 1981-12-03 | 3000.00 | NULL |     20 |
+-------+-------+---------+------+------------+---------+------+--------+
5 rows in set (0.00 sec)

mysql> select*
    -> from emp
    -> where  job=(ANALYST,MANAGER);
ERROR 1054 (42S22): Unknown column 'ANALYST' in 'where clause'
mysql> select*
    -> sal*12 as annual salary
    -> from emp
    -> where job not in('ANALYST','MANAGER');
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'sal*12 as annual salary
from emp
where job not in('ANALYST','MANAGER')' at line 2
mysql> select*,sal*12 as Annual Salary
    -> from emp
    -> where job not in('ANALYST','MANAGER');
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'Salary
from emp
where job not in('ANALYST','MANAGER')' at line 1
mysql> select*,sal*12 as annual_salary
    -> from emp
    -> where job not in('ANALYST','MANAGER');
+-------+--------+-----------+------+------------+---------+---------+--------+---------------+
| empno | ename  | job       | mgr  | hiredate   | sal     | comm    | deptno | annual_salary |
+-------+--------+-----------+------+------------+---------+---------+--------+---------------+
|  7369 | SMITH  | CLERK     | 7902 | 1980-12-17 |  800.00 |    NULL |     20 |       9600.00 |
|  7499 | ALLEN  | SALESMAN  | 7698 | 1981-02-20 | 1600.00 |  300.00 |     30 |      19200.00 |
|  7521 | WARD   | SALESMAN  | 7698 | 1981-02-22 | 1250.00 |  500.00 |     30 |      15000.00 |
|  7654 | MARTIN | SALESMAN  | 7698 | 1981-09-28 | 1250.00 | 1400.00 |     30 |      15000.00 |
|  7839 | KING   | PRESIDENT | NULL | 1981-11-17 | 5000.00 |    NULL |     10 |      60000.00 |
|  7844 | TURNER | SALESMAN  | 7698 | 1981-09-08 | 1500.00 |    0.00 |     30 |      18000.00 |
|  7876 | ADAMS  | CLERK     | 7788 | 1983-01-12 | 1100.00 |    NULL |     20 |      13200.00 |
|  7900 | JAMES  | CLERK     | 7698 | 1981-12-03 |  950.00 |    NULL |     30 |      11400.00 |
|  7934 | MILLER | CLERK     | 7782 | 1982-01-23 | 1300.00 |    NULL |     10 |      15600.00 |
+-------+--------+-----------+------+------------+---------+---------+--------+---------------+
9 rows in set (0.00 sec)

mysql> select ename
    -> from emp
    -> where hiredate (+81,-87);
ERROR 1305 (42000): FUNCTION kgcas.hiredate does not exist
mysql> select ename
    -> from emp
    -> where hiredate(+81 AND -87);
ERROR 1305 (42000): FUNCTION kgcas.hiredate does not exist
mysql> select ename
    -> from emp
    -> where hiredate >DATE('1980-12-31') and hiredate<DATE ('1988-01-01');
+--------+
| ename  |
+--------+
| ALLEN  |
| WARD   |
| JONES  |
| MARTIN |
| BLAKE  |
| CLARK  |
| SCOTT  |
| KING   |
| TURNER |
| ADAMS  |
| JAMES  |
| FORD   |
| MILLER |
+--------+
13 rows in set (0.00 sec)

mysql> select ename,hiredate
    -> from emp
    -> where hiredate >DATE('1980-12-31') and hiredate<DATE ('1988-01-01');
+--------+------------+
| ename  | hiredate   |
+--------+------------+
| ALLEN  | 1981-02-20 |
| WARD   | 1981-02-22 |
| JONES  | 1981-04-02 |
| MARTIN | 1981-09-28 |
| BLAKE  | 1981-05-01 |
| CLARK  | 1981-06-09 |
| SCOTT  | 1982-12-09 |
| KING   | 1981-11-17 |
| TURNER | 1981-09-08 |
| ADAMS  | 1983-01-12 |
| JAMES  | 1981-12-03 |
| FORD   | 1981-12-03 |
| MILLER | 1982-01-23 |
+--------+------------+
13 rows in set (0.00 sec)

mysql> select ename
    -> from emp
    -> where hiredate >DATE('1981-12-31') and hiredate<DATE ('1987-01-01');
+--------+
| ename  |
+--------+
| SCOTT  |
| ADAMS  |
| MILLER |
+--------+
3 rows in set (0.00 sec)

mysql> select ename,hiredate
    -> from emp
    -> where hiredate >DATE('1981-12-31') and hiredate<DATE ('1987-01-01');
+--------+------------+
| ename  | hiredate   |
+--------+------------+
| SCOTT  | 1982-12-09 |
| ADAMS  | 1983-01-12 |
| MILLER | 1982-01-23 |
+--------+------------+
3 rows in set (0.00 sec)
mysql> select countr(*)
    -> from emp
    -> where sal<2000 and deptno=10;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '*)
from emp
where sal<2000 and deptno=10' at line 1
mysql> select countr(*)
    -> from emp
    -> where sal<2000 and deptno=10;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '*)
from emp
where sal<2000 and deptno=10' at line 1
mysql> select count(*)
    -> from emp
    -> where sal<2000 and deptno=10;
+----------+
| count(*) |
+----------+
|        1 |
+----------+
1 row in set (0.00 sec)

mysql> select deptno,sal
    -> from emp
    -> where deptno=10;
+--------+---------+
| deptno | sal     |
+--------+---------+
|     10 | 2450.00 |
|     10 | 5000.00 |
|     10 | 1300.00 |
+--------+---------+
3 rows in set (0.00 sec)

mysql> select deptno,sal,ename
    -> from emp
    -> where deptno=10;
+--------+---------+--------+
| deptno | sal     | ename  |
+--------+---------+--------+
|     10 | 2450.00 | CLARK  |
|     10 | 5000.00 | KING   |
|     10 | 1300.00 | MILLER |
+--------+---------+--------+
3 rows in set (0.00 sec)

mysql> select count(*),ename
    -> from emp
    -> where sal<2000 and deptno=10;
ERROR 1140 (42000): In aggregated query without GROUP BY, expression #2 of SELECT list contains nonaggregated column 'kgcas.emp.ename'; this is incompatible with sql_mode=only_full_group_by
mysql> select sum(sal)
    -> from emp
    -> where job='clerk';
+----------+
| sum(sal) |
+----------+
|  4150.00 |
+----------+
1 row in set (0.00 sec)

mysql> select ename, sum(sal)
    -> from emp
    -> where job='clerk';
ERROR 1140 (42000): In aggregated query without GROUP BY, expression #1 of SELECT list contains nonaggregated column 'kgcas.emp.ename'; this is incompatible with sql_mode=only_full_group_by
mysql> select sum(sal)
    -> from emp
    -> where job='clerk'
    -> group by ename;
+----------+
| sum(sal) |
+----------+
|   800.00 |
|  1100.00 |
|   950.00 |
|  1300.00 |
+----------+
4 rows in set (0.00 sec)

mysql> select avg(sal)
    -> from emp
    -> ;
+-------------+
| avg(sal)    |
+-------------+
| 2073.214286 |
+-------------+
1 row in set (0.00 sec)

mysql> select avg(sal),count(sal),count(ename),max(sal)
    -> from emp;
+-------------+------------+--------------+----------+
| avg(sal)    | count(sal) | count(ename) | max(sal) |
+-------------+------------+--------------+----------+
| 2073.214286 |         14 |           14 |  5000.00 |
+-------------+------------+--------------+----------+
1 row in set (0.00 sec)

mysql> select avg(sal),sum(sal),count(ename),max(sal)
    -> from emp;
+-------------+----------+--------------+----------+
| avg(sal)    | sum(sal) | count(ename) | max(sal) |
+-------------+----------+--------------+----------+
| 2073.214286 | 29025.00 |           14 |  5000.00 |
+-------------+----------+--------------+----------+
1 row in set (0.00 sec)

mysql> select sum(sal)
    -> from emp
    -> group by job;
+----------+
| sum(sal) |
+----------+
|  4150.00 |
|  5600.00 |
|  8275.00 |
|  6000.00 |
|  5000.00 |
+----------+
5 rows in set (0.00 sec)

mysql> select sum(sal),job
    -> from emp
    -> group by job;
+----------+-----------+
| sum(sal) | job       |
+----------+-----------+
|  4150.00 | CLERK     |
|  5600.00 | SALESMAN  |
|  8275.00 | MANAGER   |
|  6000.00 | ANALYST   |
|  5000.00 | PRESIDENT |
+----------+-----------+
5 rows in set (0.00 sec)

mysql> select count(dept)
    -> from emp
    -> group by dept;
ERROR 1054 (42S22): Unknown column 'dept' in 'field list'
mysql> select (*)
    -> from emp
    -> group by deptno;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '*)
from emp
group by deptno' at line 1
mysql> select (*)
    -> from emp
    -> from emp;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '*)
from emp
from emp' at line 1
mysql> select count(*)
    -> from emp;
+----------+
| count(*) |
+----------+
|       14 |
+----------+
1 row in set (0.01 sec)

mysql> select count(*)
    -> from emp;
+----------+
| count(*) |
+----------+
|       14 |
+----------+
1 row in set (0.00 sec)

mysql> select avg(sal),mgr
    -> from emp
    -> group by mgr;
+-------------+------+
| avg(sal)    | mgr  |
+-------------+------+
|  800.000000 | 7902 |
| 1310.000000 | 7698 |
| 2758.333333 | 7839 |
| 3000.000000 | 7566 |
| 5000.000000 | NULL |
| 1100.000000 | 7788 |
| 1300.000000 | 7782 |
+-------------+------+
7 rows in set (0.00 sec)

mysql> select count(*)
    -> from emp
    -> group by deptno;
+----------+
| count(*) |
+----------+
|        5 |
|        6 |
|        3 |
+----------+
3 rows in set (0.00 sec)

mysql> select add(comm),job='salesman'
    -> from emp
    -> group by;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'add(comm),job='salesman'
from emp
group by' at line 1
mysql> select add(comm)
    -> from emp
    -> group by job='salesman';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'add(comm)
from emp
group by job='salesman'' at line 1
mysql> select count(*),deptno
    -> from emp
    -> where job='clerk'
    -> group by deptno
    ->
    -> having count(*)>=2;
+----------+--------+
| count(*) | deptno |
+----------+--------+
|        2 |     20 |
+----------+--------+
1 row in set (0.00 sec)

mysql> select sum(sal),job
    -> from emp
    -> group by job
    -> having sum
    -> having sum(sal)>5000;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'having sum(sal)>5000' at line 5
mysql> select sum(sal),job
    -> from emp
    -> group by job
    -> having sum(sal)>5000;
+----------+----------+
| sum(sal) | job      |
+----------+----------+
|  5600.00 | SALESMAN |
|  8275.00 | MANAGER  |
|  6000.00 | ANALYST  |
+----------+----------+
3 rows in set (0.00 sec)

mysql> select avg(sal),deptno
    -> from emp
    -> group by job
    -> having sum(sal)>2000;
ERROR 1055 (42000): Expression #2 of SELECT list is not in GROUP BY clause and contains nonaggregated column 'kgcas.emp.deptno' which is not functionally dependent on columns in GROUP BY clause; this is incompatible with sql_mode=only_full_group_by
mysql> select avg(sal),job
    -> from emp
    -> group by job
    -> having sum(sal)>2000;
+-------------+-----------+
| avg(sal)    | job       |
+-------------+-----------+
| 1037.500000 | CLERK     |
| 1400.000000 | SALESMAN  |
| 2758.333333 | MANAGER   |
| 3000.000000 | ANALYST   |
| 5000.000000 | PRESIDENT |
+-------------+-----------+
5 rows in set (0.00 sec)

mysql> show table emp
    -> show table emp;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'emp
show table emp' at line 1
mysql> show table emp;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'emp' at line 1
mysql> desc emp;
+----------+--------------+------+-----+---------+-------+
| Field    | Type         | Null | Key | Default | Extra |
+----------+--------------+------+-----+---------+-------+
| empno    | decimal(4,0) | NO   |     | NULL    |       |
| ename    | varchar(10)  | YES  |     | NULL    |       |
| job      | varchar(9)   | YES  |     | NULL    |       |
| mgr      | decimal(4,0) | YES  |     | NULL    |       |
| hiredate | date         | YES  |     | NULL    |       |
| sal      | decimal(7,2) | YES  |     | NULL    |       |
| comm     | decimal(7,2) | YES  |     | NULL    |       |
| deptno   | decimal(2,0) | YES  |     | NULL    |       |
+----------+--------------+------+-----+---------+-------+
8 rows in set (0.02 sec)

mysql> select  * from emp;
+-------+--------+-----------+------+------------+---------+---------+--------+
| empno | ename  | job       | mgr  | hiredate   | sal     | comm    | deptno |
+-------+--------+-----------+------+------------+---------+---------+--------+
|  7369 | SMITH  | CLERK     | 7902 | 1980-12-17 |  800.00 |    NULL |     20 |
|  7499 | ALLEN  | SALESMAN  | 7698 | 1981-02-20 | 1600.00 |  300.00 |     30 |
|  7521 | WARD   | SALESMAN  | 7698 | 1981-02-22 | 1250.00 |  500.00 |     30 |
|  7566 | JONES  | MANAGER   | 7839 | 1981-04-02 | 2975.00 |    NULL |     20 |
|  7654 | MARTIN | SALESMAN  | 7698 | 1981-09-28 | 1250.00 | 1400.00 |     30 |
|  7698 | BLAKE  | MANAGER   | 7839 | 1981-05-01 | 2850.00 |    NULL |     30 |
|  7782 | CLARK  | MANAGER   | 7839 | 1981-06-09 | 2450.00 |    NULL |     10 |
|  7788 | SCOTT  | ANALYST   | 7566 | 1982-12-09 | 3000.00 |    NULL |     20 |
|  7839 | KING   | PRESIDENT | NULL | 1981-11-17 | 5000.00 |    NULL |     10 |
|  7844 | TURNER | SALESMAN  | 7698 | 1981-09-08 | 1500.00 |    0.00 |     30 |
|  7876 | ADAMS  | CLERK     | 7788 | 1983-01-12 | 1100.00 |    NULL |     20 |
|  7900 | JAMES  | CLERK     | 7698 | 1981-12-03 |  950.00 |    NULL |     30 |
|  7902 | FORD   | ANALYST   | 7566 | 1981-12-03 | 3000.00 |    NULL |     20 |
|  7934 | MILLER | CLERK     | 7782 | 1982-01-23 | 1300.00 |    NULL |     10 |
+-------+--------+-----------+------+------------+---------+---------+--------+
14 rows in set (0.00 sec)
