#기존에 a2 데이터베이스가 존재한다면 삭제
DROP DATABASE if EXISTS a2;
CREATE DATABASE a2;

USE a2;

CREATE TABLE article();



SELECT *
FROM article;

ALTER TABLE article MODIFY COLUMN title VARCHAR(100) NOT NULL;
ALTER TABLE article MODIFY COLUMN regDate DATETIME NOT NULL;
ALTER TABLE article MODIFY COLUMN `body` TEXT NOT NULL;


ALTER TABLE article MODIFY COLUMN id INT UNSIGNED NOT NULL AUTO_INCREMENT;



ALTER TABLE article ADD COLUMN hit INT UNSIGNED NOT NULL AFTER nickname;

AFTER TABLE article DROP COLUMN hit;


UPDATE article
SET nickname = '무명'
WHERE nickname = '';

INSERT INTO article 
SET regDate = NOW()
,title ='제목3'
,`body` = '내용3'
,nickname = '집갈래'
,hit = 55;


INSERT INTO article 
SET regDate = NOW()
,title ='제목2'
,`body` = '내용2'
,nickname = '집'
,hit = 33;

INSERT INTO article 
SET regDate = NOW()
,title ='제목1'
,`body` = '내용1'
,nickname = '갈래'
,hit = 46;


DESC article;


SELECT *
FROM article LIMIT 3;

SELECT * FROM article
ORDER BY id ASC;

SELECT title,`body` FROM article
WHERE nickname LIKE '집%';#키워드 검색

SELECT title,`body` FROM article
WHERE nickname LIKE '%정';
#바디, 타이틀 컬럼에서 키워드 검색
SELECT title,`body` FROM article
WHERE nickname LIKE '무%';




INSERT INTO article
id INT NOT nul PRIMARY KEY AUTO_INCREMENT,
SET regDate = NOW() ,
title=VARCHAR
`body`=TEXT
ADD PRIMARY KEY(id)


AFTER TABLE article MODIFY COLUMN ud ubt INT NOT NULL PRIMARY KEY;

UPDATE article
SET `body` = '내용'
WHERE id = 1

#check는 제약 조건으로 특정 컬럼의 값이 지정된 조건을 만족헤야 함을 강조
CREATE TABLE tbl_users(
	email. VARCHAR(30) PRIMARY key
	, pw VARCHAR (200) NOT NULL
	,question INT NOT NULL CHECK(question IN (1,2,3))	
	, answer VARCHAR NOT NULL
	,created_date DATETIME DEFAULT NOW() NOT NULL
	,UPDATE_date DATETIME DEFAULT NOW() NOT NULL
);

SELECT * FROM tbl_users;












