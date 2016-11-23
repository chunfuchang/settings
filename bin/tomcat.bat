@echo off
if "%1" == "start" GOTO start
if "%1" == "stop" GOTO stop
echo Usage:
echo   tomcat start
echo   tomcat stop
goto done
:start
net start "Apache Tomcat"
goto done
:stop
net stop "Apache Tomcat"
:done
