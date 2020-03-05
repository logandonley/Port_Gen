@ECHO OFF
ECHO Checking connection, please wait...
PING 194.109.6.66 | FIND "Reply from " > NUL
IF NOT ERRORLEVEL EXIT 0
IF     ERRORLEVEL 1 EXIT 1
