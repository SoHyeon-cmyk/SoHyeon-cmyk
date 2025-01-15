CREATE DATABASE a1;

#데이터베이스 선택
USE a1;

#데이터베이스 보기
SHOW DATABASES;

SHOW TABLES;

#게시물테이블 article생성 (컬럼이름)
CREATE TABLE article(
	title VARCHAR(100),
	body TEXT 
);

DESC article;

#데이터추가
INSERT INTO article(데이터를만든 테이블안에 넣음,SET은 세티한 대로 데이터를 넣음)
SET title = '제목',
body = '내용';
VALUE {

'제목 1',
'내용 1'
};

AFTER TABLE article ADD COLUMN id INT FIRST;

#into가 없음, 이유는 업데이트는 이미 공간에 있는 곳에 값을 수정하는 것이기 때문.
UPDATE article
SET id = 1;

#기존의 데이터에서 id를 2로 변경(limit 1)
UPDATE article
SET id =2
LIMIT 1;

#데이터 추가

INSERT INTO article 
SET id=3,
title = '제목3',
body = '내용3';

#2번 게시물 데이터 ㅅ삭제 =delete
DELETE FROM article
WHERE id = 2;

#날짜 칼럼 추가 타입은 datetime  id 칼럼 뒤에 추가
ALTER TABLE article ADD COLUMN regDate DATETIME AFTER id;

#1번 게시물의 비어있는 날짜정보 채움(regdate = 2024-08-10 15:00:00)
UPDATE article
SET regDate = '2024-08-10 15:00:00'
WHERE id = 1;
#now()(현재 시간 정보를 구해줌)
SELECT NOW() FROM DUAL;

UPDATE article 
SET regDate = NOW()
WHERE id = 3;

SELECT * FROM article;
DESC article;



