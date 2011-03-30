@echo off

if "%OS%"=="Windows_NT" @setlocal

rem %~dp0 is expanded pathname of the current script under NT

if "%DEPLOY_HOME%X"=="X" set DEPLOY_HOME=%~dp0..

set DEPLOY_ARGS=

:setupArgs
if ""%1""=="""" goto doneStart
set DEPLOY_ARGS=%DEPLOY_ARGS% %1
shift
goto setupArgs

:doneStart

java -splash:images\ibis-splash.png -classpath "%CLASSPATH%;%DEPLOY_HOME%;%DEPLOY_HOME%\lib\*;%DEPLOY_HOME%\lib\castor-1.1.1-xml.jar" -Dgat.adaptor.path="%DEPLOY_HOME%"\lib\adaptors -Djava.library.path="%DEPLOY_HOME%"\lib\native_libraries -Dibis.deploy.home="%DEPLOY_HOME%" ibis.deploy.gui.GUI %DEPLOY_ARGS%

if "%OS%"=="Windows_NT" @endlocal