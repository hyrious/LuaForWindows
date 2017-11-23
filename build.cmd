@echo off
setlocal

set VERSION=5.3.4
set FILENAME=lua-%VERSION%.tar.gz
set DIRNAME=lua-%VERSION%

if not exist %FILENAME% call :Download
echo Unzipping %FILENAME% ..
>nul tar zxvf %FILENAME%
echo Ok.
pushd %DIRNAME%
echo Building %DIRNAME% ..
>nul make mingw
echo Check version:
make test
echo Making target [%DIRNAME%\install] ..
>nul make local
echo Ok.
pushd install
echo Zipping lua.zip ..
zip -q ../../lua.zip ./*
echo Ok.
popd
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
