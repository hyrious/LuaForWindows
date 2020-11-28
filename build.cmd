@echo off
setlocal

set VERSION=5.4.1
set FILENAME=lua-%VERSION%.tar.gz
set DIRNAME=lua-%VERSION%

if exist lua call :Clean
if not exist %FILENAME% call :Download
echo Unzipping %FILENAME% ..
>nul tar zxvf %FILENAME%
echo Ok.
pushd %DIRNAME%
echo Building %DIRNAME% ..
>nul make mingw
echo Check version:
make test
echo Making target [%DIRNAME%\install -^> lua] ..
>nul make local
>nul move /y install ..\lua
>nul copy /y src\*.dll ..\lua\bin
echo Ok.
popd
echo clean
>nul del /s/f/q %DIRNAME%
rd /s/q %DIRNAME%
del %FILENAME%
echo Ok.
goto :EOF

:Download
echo Downloading %FILENAME% ..
start /w curl -R -O https://www.lua.org/ftp/%FILENAME%
echo Ok.
goto :EOF

:Clean
echo Cleaning previous files ..
>nul del /s/f/q lua
rd /s/q lua
echo Ok.
goto :EOF
