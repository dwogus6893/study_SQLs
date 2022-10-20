-- +4 : 이름, 이메일, 권한이름 나타내기, 조건- 이름이 Teddy, Allen인 것만 (MySQL)
SELECT users.NAME, users.EMAIL, auth_names.AUTH_NAME
FROM (users INNER JOIN auths
ON users.UNIQUE_ID = auths.UNIQUE_ID_USERS
AND users.NAME IN ('Teddy', 'Allen')) INNER JOIN auth_names
										ON auths.UNIQUE_ID_AUTH_NAMES = auth_names.UNIQUE_ID;