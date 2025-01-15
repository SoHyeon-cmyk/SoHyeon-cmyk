# member테이블의 모든 데이터를 조회해보자
SELECT * FROM memberTBL;

# memberName과 memberAddress만 추출해보자
SELECT memberName, memberAddress FROM memberTBL;

# 지운이에 대한 정보만 추출해보자
SELECT * FROM memberTBL WHERE memberName = '지운이';

# 테이블 삭제한다
DROP TABLE productTBL;

#전체 데이터베이스 리스팅 = 데이터베이스 목록 봉줘
SHOW DATABASES;
#소문자를 입력했는데 대문자로 바뀐다 = 예약어

#mysql 데이터베이스 선택
USE mysql;

#데이터베이스의 모든 테이블목록을 봉줘
SHOW TABLES;

CREATE DATABASE `test`;

USE test;#test데이트베이스 선택

SHOW TABLES

#a1 데이터베이스 삭제 if(만약 존재한다면)
DROP DATABASE IF EXISTS a1;