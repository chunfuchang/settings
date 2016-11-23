@echo off
set JAVA_OPTS=%JAVA_OPTS% -Dorg.jboss.logging.Log4jService.catchSystemOut=false -Xmx450M
call run2.bat %1 %2 %3 %4 %5 %6 %7 %8 %9
