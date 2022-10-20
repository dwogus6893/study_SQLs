SELECT users.NAME, users.EMAIL,auth_names.AUTH_NAME
FROM (users INNER JOIN auths
ON users.UNIQUE_ID = UNIQUE_ID_USERS
AND users.Name IN ('TEDDY','Allen')) 
INNER JOIN auth_names ON auths.UNIQUE_ID_AUTH_NAMES = AUTH_NAMEs.UNIQUE_ID;