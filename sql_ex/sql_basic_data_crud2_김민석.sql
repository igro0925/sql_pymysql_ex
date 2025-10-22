use db_basic;

-- post 테이블
CREATE TABLE post (
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
title VARCHAR(255) NOT NULL,
content TEXT NOT NULL
);


-- usersd 테이블
CREATE TABLE usersd (
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
name VARCHAR(50) NOT NULL,
phone VARCHAR(30) not null,
address VARCHAR(100)
);

-- post 테이블 채우기
INSERT INTO post(title, content) VALUES ('코딩', '재미있어요!');

INSERT INTO post(title, content) VALUES ('java', '객체지향언어');

INSERT INTO post(title, content) VALUES ('html', '웹 표준 언어');

INSERT INTO post(title, content) VALUES ('python', '잘 할 수 있다.');

INSERT INTO post(title, content) VALUES ('django', '풀스텍 개발 프레임워크');


-- usersd 테이블 채우기
INSERT INTO usersd(name, phone, address) VALUES ('kim', '010-1111-1111', 'seoul');

INSERT INTO usersd(name, phone, address) VALUES ('lee', '010-2222-2222', 'seoul');

INSERT INTO usersd(name, phone, address) VALUES ('song', '010-3333-3333', 'daegu');

INSERT INTO usersd(name, phone, address) VALUES ('park', '010-4444-4444', 'busan');

INSERT INTO usersd(name, phone, address) VALUES ('lee', '010-5555-5555', 'daegu');


-- post와 usersd 테이블 조회
select title, content from post;

select * from usersd;


-- where을 추가해서 일부 데이터 보기
select * from post where id = 2;
select * from post where title like 'java%';	-- title에서 'java'문자열로 시작하는것 모두 조회
select * from post where title like '코딩';

select title, content from post where id between 1 and 3;
select * from usersd where address in ('seoul', 'busan', 'deagu');


-- order by 추가하기 (ascending, descending)
select * from post order by title asc;
select * from post order by title desc;


-- 데이터 수정 명령
UPDATE post SET title = '제목수정중', content = '본문수정중' WHERE id=3;


-- 데이터 삭제 명령
delete from post where id = 3;