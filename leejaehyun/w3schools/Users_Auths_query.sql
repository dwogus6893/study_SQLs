-- 회원 가입
INSERT INTO users (UNIQUE_ID_USERS, NAME, EMAIL, JOB)
VALUES ('U1', 'Paul', 'paul01@gmail.com', 'IT Billing')	
;

INSERT INTO users (UNIQUE_ID_USERS, NAME, EMAIL, JOB)
VALUES ('U2', 'Allen', 'texas@imfblog.org', 'Engineering')
;	

INSERT INTO users (UNIQUE_ID_USERS, NAME, EMAIL, JOB)
VALUES ('U3', 'Teddy', 'norway@iotm.com', 'IT Billing')
;

INSERT INTO users (UNIQUE_ID_USERS, NAME, EMAIL, JOB)
VALUES ('U4', 'Paul', 'paul_p@naver.com', 'Developer')
;

-- 권한
INSERT INTO auth_names (AUTH_NAME, UNIQUE_ID_AUTH_NAMES)
VALUES ('GUEST', 'B1')
;

INSERT INTO auth_names (AUTH_NAME, UNIQUE_ID_AUTH_NAMES)
VALUES ('ADMIN', 'B2')
;

INSERT INTO auth_names (AUTH_NAME, UNIQUE_ID_AUTH_NAMES)
VALUES ('MANAGER', 'B3')
;

-- 권한 부여
INSERT INTO auths (UNIQUE_ID_USERS, UNIQUE_ID_AUTH_NAMES)
VALUES ('U1', 'B1')
;

INSERT INTO auths (UNIQUE_ID_USERS, UNIQUE_ID_AUTH_NAMES)
VALUES ('U1', 'B2')
;

INSERT INTO auths (UNIQUE_ID_USERS, UNIQUE_ID_AUTH_NAMES)
VALUES ('U2', 'B1')
;

INSERT INTO auths (UNIQUE_ID_USERS, UNIQUE_ID_AUTH_NAMES)
VALUES ('U2', 'B2')
;

INSERT INTO auths (UNIQUE_ID_USERS, UNIQUE_ID_AUTH_NAMES)
VALUES ('U2', 'B3')
;

INSERT INTO auths (UNIQUE_ID_USERS, UNIQUE_ID_AUTH_NAMES)
VALUES ('U3', 'B1')
;

INSERT INTO auths (UNIQUE_ID_USERS, UNIQUE_ID_AUTH_NAMES)
VALUES ('U4', 'B2')
;

INSERT INTO auths (UNIQUE_ID_USERS, UNIQUE_ID_AUTH_NAMES)
VALUES ('U4', 'B1')
;

-- 회원 탈퇴
DELETE FROM auths 
WHERE UNIQUE_ID_USERS = 'U2'
;

DELETE FROM auths 
WHERE UNIQUE_ID_USERS = 'U4'
;

DELETE FROM users 
WHERE UNIQUE_ID_USERS = 'U2'
;

DELETE FROM users 
WHERE UNIQUE_ID_USERS = 'U4'
;

-- 결과 확인
SELECT *
FROM users;

SELECT *
FROM auth_names;

SELECT *
FROM auths;

