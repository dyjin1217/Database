/*
���� : SOFTCAMPUS ����Ŭ ���Ǹ� ���� �ۼ�
Scott �������� �α���
BONUS, DEPT, EMP, SALGRADE ���̺� ����
SQL Developer ���� ��ɾ� F5�� ����
*/

-- ������ ��ųʸ� TAB : TABLE�� ���ڷ� ���̺� ��� ��ȸ
SELECT * FROM TAB;

-- ���̺� ������ �˱� ���� DESC

-- EMPNO(�����ȣ), ENAME(����̸�), JOB(������)
-- MGR(�ش����� ��� �����ȣ)
-- HIREDATE(�Ի���), SAL(�޿�), COMM(Ŀ�̼�), DEPTNO(�μ���ȣ)
DESC EMP;

-- DEPTNO(�μ���ȣ), DNAME(�μ���), LOC(������)
DESC DEPT;

-- ������ Ÿ�� 
-- NUMBER(PRECISION, SCALE), DATE, CHAR, VARCHAR2


/* SELECT ��ɾ�
SELECT [DISTINCT] {*, COLUMN1[Alias],COLUMN1[,,}
FROM TABLE NAME; 
�ݵ�� SELECT, FROM ����
*/

SELECT * FROM EMP;

-- Ư�� �����͸� ����
SELECT EMPNO, ENAME
FROM EMP;

-- ENAME, SAL, HIREDATE ���
SELECT ENAME, SAL, HIREDATE
FROM EMP;

-- ������ ���

SELECT ENAME, SAL, SAL*12
FROM EMP;

-- NULL���� ������
SELECT ENAME, SAL, JOB ,COMM, SAL*12, SAL*12+COMM
FROM EMP;

-- NVL(A,VAL)�� A�÷��� NULL�̸� VAL������ ��ü
SELECT ENAME, COMM, SAL*12+COMM, NVL(COMM,0), SAL*12+NVL(COMM,0)
FROM EMP;

-- �÷��� ALIAS �����
SELECT ENAME, SAL*12+NVL(COMM,0) As Annsal
FROM EMP;

-- �⺻�� �빮�ڷ� �ν�, ��ҹ��� ����, ����, Ư������ ���� ����ϰ� ������ " "���
-- AS ���� ����
SELECT ENAME, SAL*12+NVL(COMM,0) As "Annsal"
FROM EMP;

-- ����, �μ��� �ѱۻ�� ���
SELECT DEPTNO AS "�μ���ȣ", DNAME AS "�μ���" 
FROM DEPT;

-- CONCATENATION ������ ���ǿ� ��� (||)
SELECT ENAME || ' IS A ' || JOB
FROM EMP;

-- DISTINCT Ű����
SELECT DISTINCT DEPTNO 
FROM EMP;

SELECT DISTINCT JOB
FROM EMP;