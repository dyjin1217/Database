/*
참고 : SOFTCAMPUS 오라클 강의를 토대로 작성
Scott 계정으로 로그인
BONUS, DEPT, EMP, SALGRADE 테이블 존재
SQL Developer 에서 명령어 F5로 실행
*/

-- 데이터 딕셔너리 TAB : TABLE의 약자로 테이블 목록 조회
SELECT * FROM TAB;

-- 테이블 구조를 알기 위한 DESC

-- EMPNO(사원번호), ENAME(사원이름), JOB(담당업무)
-- MGR(해당사원의 상사 사원번호)
-- HIREDATE(입사일), SAL(급여), COMM(커미션), DEPTNO(부서번호)
DESC EMP;

-- DEPTNO(부서번호), DNAME(부서명), LOC(지역명)
DESC DEPT;

-- 데이터 타입 
-- NUMBER(PRECISION, SCALE), DATE, CHAR, VARCHAR2


/* SELECT 명령어
SELECT [DISTINCT] {*, COLUMN1[Alias],COLUMN1[,,}
FROM TABLE NAME; 
반드시 SELECT, FROM 포함
*/

SELECT * FROM EMP;

-- 특정 데이터만 보기
SELECT EMPNO, ENAME
FROM EMP;

-- ENAME, SAL, HIREDATE 출력
SELECT ENAME, SAL, HIREDATE
FROM EMP;

-- 연산자 사용

SELECT ENAME, SAL, SAL*12
FROM EMP;

-- NULL포함 데이터
SELECT ENAME, SAL, JOB ,COMM, SAL*12, SAL*12+COMM
FROM EMP;

-- NVL(A,VAL)은 A컬럼이 NULL이면 VAL값으로 대체
SELECT ENAME, COMM, SAL*12+COMM, NVL(COMM,0), SAL*12+NVL(COMM,0)
FROM EMP;

-- 컬럼에 ALIAS 만들기
SELECT ENAME, SAL*12+NVL(COMM,0) As Annsal
FROM EMP;

-- 기본은 대문자로 인식, 대소문자 구분, 공백, 특수문자 등을 사용하고 싶으면 " "사용
-- AS 생략 가능
SELECT ENAME, SAL*12+NVL(COMM,0) As "Annsal"
FROM EMP;

-- 연봉, 부서명 한글사용 출력
SELECT DEPTNO AS "부서번호", DNAME AS "부서명" 
FROM DEPT;

-- CONCATENATION 연산자 정의와 사용 (||)
SELECT ENAME || ' IS A ' || JOB
FROM EMP;

-- DISTINCT 키워드
SELECT DISTINCT DEPTNO 
FROM EMP;

SELECT DISTINCT JOB
FROM EMP;