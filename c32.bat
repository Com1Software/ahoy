@ECHO OFF
CLS
if A%1 == A GOTO :SINTAX
ECHO Initializing the Harbour Environment ...
SET HB_WITH_CURL=%1\curl\lib
Set HB_COMPILER=mingw
PATH=C:\WINDOWS\system32;C:\WINDOWS;C:\WINDOWS\System32\Wbem
path=%path%;%1\curl\bin\;%1\curl\lib
path=%path%;%1\hb32\bin
path=%path%;%1\hb32\bin\win\mingw;%1\hb32\lib\win\mingw32;%1\hb32\include
path=%path%;%1\MinGW\mingw32\bin;%1\MinGW\mingw32\lib
path=%path%;%1\MinGW\bin;%1\MinGW\lib
path=%path%;%1\openssl-win32

path=%path%;%1\openssl-win32\bin

hbmk2 ahoy 
GOTO COMPLETE
:SINTAX
ECHO    SYNTAX: C32 [drive]     {-- Drive missing 
ECHO                             {-- c: d: ect..
GOTO EXIT
:COMPLETE
ECHO Initialization Complete ...
:EXIT
