:: Use only under MIT License
:: If you want to Publish a modified Version please mention the Original Creator PIRANY and link the GitHub Repo
:top
@color 02
@if not defined debug_assist (@ECHO OFF) else (@echo on)
if defined devtools goto dtd
setlocal enableextensions ENABLEDELAYEDEXPANSION 
@ping -n 1 localhost> nul
echo.
@ping -n 1 localhost> nul
echo [1] Count Speed
echo.
@ping -n 1 localhost> nul
echo.
@ping -n 1 localhost> nul
echo [2] Open Windows
echo.
@ping -n 1 localhost> nul
echo.
@ping -n 1 localhost> nul
echo [3] Exit
echo.
echo.
set /p menu1=Choose an Option from Above:

If %menu1% == 1 goto countspeed
If %menu1% == 2 goto oppwind
If %menu1% == 3 exit
goto top

:countspeed
@ping -n 1 localhost> nul
echo.
@ping -n 1 localhost> nul
echo [1] Count to 1000
echo.
@ping -n 1 localhost> nul
echo.
@ping -n 1 localhost> nul
echo [2] Count to 10000
echo.
@ping -n 1 localhost> nul
echo.
@ping -n 1 localhost> nul
echo [3] Count to 100000
echo.
@ping -n 1 localhost> nul
echo.
@ping -n 1 localhost> nul
echo [4] Count to 1000000
echo.
@ping -n 1 localhost> nul
echo.
@ping -n 1 localhost> nul
echo [5] Count to 10000000
echo.
@ping -n 1 localhost> nul
echo.
@ping -n 1 localhost> nul
echo [6] Count to 100000000
echo.
@ping -n 1 localhost> nul
echo.
@ping -n 1 localhost> nul
echo [7] Back
echo.
echo.
set /p menu1=Choose an Option from Above:

If %menu1% == 1 goto countspeed1000
If %menu1% == 2 goto countspeed10000
If %menu1% == 3 goto countspeed100000
If %menu1% == 4 goto countspeed1000000
If %menu1% == 5 goto countspeed10000000
If %menu1% == 6 goto countspeed100000000
If %menu1% == 6 goto top
goto countspeed


:countspeed1000
for /f "delims=" %%a in ('wmic os get localdatetime ^| find "."') do set datetime=%%a
set /a start_time=!datetime:~0,4!*365*24*60*60*1000 + !datetime:~4,2!*30*24*60*60*1000 + !datetime:~6,2!*24*60*60*1000 + !datetime:~8,2!*60*60*1000 + !datetime:~10,2!*60*1000 + !datetime:~12,2!*1000 + !datetime:~15,3!
echo Starttime: !start_time!
:startcount
set "x=0"
:startcount21
echo %x%/1000
set /a "x+=1"
If %x% == 1000 (goto done) else (goto startcount21)
:done
for /f "delims=" %%a in ('wmic os get localdatetime ^| find "."') do set datetime=%%a
set /a end_time=!datetime:~0,4!*365*24*60*60*1000 + !datetime:~4,2!*30*24*60*60*1000 + !datetime:~6,2!*24*60*60*1000 + !datetime:~8,2!*60*60*1000 + !datetime:~10,2!*60*1000 + !datetime:~12,2!*1000 + !datetime:~15,3!
echo Starttime: !start_time!
echo Endtime: !end_time!
set /a elapsed_time=!end_time! - !start_time!
echo 1000 Numbers Needed !elapsed_time!ms.
endlocal
pause
goto top


:countspeed10000
for /f "delims=" %%a in ('wmic os get localdatetime ^| find "."') do set datetime=%%a
set /a start_time=!datetime:~0,4!*365*24*60*60*1000 + !datetime:~4,2!*30*24*60*60*1000 + !datetime:~6,2!*24*60*60*1000 + !datetime:~8,2!*60*60*1000 + !datetime:~10,2!*60*1000 + !datetime:~12,2!*1000 + !datetime:~15,3!
echo Starttime: !start_time!
:startcount
set "x=0"
:startcount22
echo %x%/10000
set /a "x+=1"
If %x% == 10000 (goto done) else (goto startcount22)
:done
for /f "delims=" %%a in ('wmic os get localdatetime ^| find "."') do set datetime=%%a
set /a end_time=!datetime:~0,4!*365*24*60*60*1000 + !datetime:~4,2!*30*24*60*60*1000 + !datetime:~6,2!*24*60*60*1000 + !datetime:~8,2!*60*60*1000 + !datetime:~10,2!*60*1000 + !datetime:~12,2!*1000 + !datetime:~15,3!
echo Starttime: !start_time!
echo Endtime: !end_time!
set /a elapsed_time=!end_time! - !start_time!
echo 10000 Numbers Needed !elapsed_time!ms.
endlocal
pause
goto top


:countspeed100000
for /f "delims=" %%a in ('wmic os get localdatetime ^| find "."') do set datetime=%%a
set /a start_time=!datetime:~0,4!*365*24*60*60*1000 + !datetime:~4,2!*30*24*60*60*1000 + !datetime:~6,2!*24*60*60*1000 + !datetime:~8,2!*60*60*1000 + !datetime:~10,2!*60*1000 + !datetime:~12,2!*1000 + !datetime:~15,3!
echo Starttime: !start_time!
:startcount
set "x=0"
:startcount23
echo %x%/100000
set /a "x+=1"
If %x% == 100000 (goto done) else (goto startcount23)
:done
for /f "delims=" %%a in ('wmic os get localdatetime ^| find "."') do set datetime=%%a
set /a end_time=!datetime:~0,4!*365*24*60*60*1000 + !datetime:~4,2!*30*24*60*60*1000 + !datetime:~6,2!*24*60*60*1000 + !datetime:~8,2!*60*60*1000 + !datetime:~10,2!*60*1000 + !datetime:~12,2!*1000 + !datetime:~15,3!
echo Starttime: !start_time!
echo Endtime: !end_time!
set /a elapsed_time=!end_time! - !start_time!
echo 100000 Numbers Needed !elapsed_time!ms.
endlocal
pause
goto top


:countspeed1000000
for /f "delims=" %%a in ('wmic os get localdatetime ^| find "."') do set datetime=%%a
set /a start_time=!datetime:~0,4!*365*24*60*60*1000 + !datetime:~4,2!*30*24*60*60*1000 + !datetime:~6,2!*24*60*60*1000 + !datetime:~8,2!*60*60*1000 + !datetime:~10,2!*60*1000 + !datetime:~12,2!*1000 + !datetime:~15,3!
echo Starttime: !start_time!
:startcount
set "x=0"
:startcount24
echo %x%/1000000
set /a "x+=1"
If %x% == 1000000 (goto done) else (goto startcount24)
:done
for /f "delims=" %%a in ('wmic os get localdatetime ^| find "."') do set datetime=%%a
set /a end_time=!datetime:~0,4!*365*24*60*60*1000 + !datetime:~4,2!*30*24*60*60*1000 + !datetime:~6,2!*24*60*60*1000 + !datetime:~8,2!*60*60*1000 + !datetime:~10,2!*60*1000 + !datetime:~12,2!*1000 + !datetime:~15,3!
echo Starttime: !start_time!
echo Endtime: !end_time!
set /a elapsed_time=!end_time! - !start_time!
echo 1000000 Numbers Needed !elapsed_time!ms.
endlocal
pause
goto top

:countspeed10000000
for /f "delims=" %%a in ('wmic os get localdatetime ^| find "."') do set datetime=%%a
set /a start_time=!datetime:~0,4!*365*24*60*60*1000 + !datetime:~4,2!*30*24*60*60*1000 + !datetime:~6,2!*24*60*60*1000 + !datetime:~8,2!*60*60*1000 + !datetime:~10,2!*60*1000 + !datetime:~12,2!*1000 + !datetime:~15,3!
echo Starttime: !start_time!
:startcount
set "x=0"
:startcount25
echo %x%/10000000
set /a "x+=1"
If %x% == 10000000 (goto done) else (goto startcount25)
:done
for /f "delims=" %%a in ('wmic os get localdatetime ^| find "."') do set datetime=%%a
set /a end_time=!datetime:~0,4!*365*24*60*60*1000 + !datetime:~4,2!*30*24*60*60*1000 + !datetime:~6,2!*24*60*60*1000 + !datetime:~8,2!*60*60*1000 + !datetime:~10,2!*60*1000 + !datetime:~12,2!*1000 + !datetime:~15,3!
echo Starttime: !start_time!
echo Endtime: !end_time!
set /a elapsed_time=!end_time! - !start_time!
echo 10000000 Numbers Needed !elapsed_time!ms.
endlocal
pause
goto top


:countspeed100000000
for /f "delims=" %%a in ('wmic os get localdatetime ^| find "."') do set datetime=%%a
set /a start_time=!datetime:~0,4!*365*24*60*60*1000 + !datetime:~4,2!*30*24*60*60*1000 + !datetime:~6,2!*24*60*60*1000 + !datetime:~8,2!*60*60*1000 + !datetime:~10,2!*60*1000 + !datetime:~12,2!*1000 + !datetime:~15,3!
echo Starttime: !start_time!
:startcount
set "x=0"
:startcount26
echo %x%/100000000
set /a "x+=1"
If %x% == 100000000 (goto done) else (goto startcount26)
:done
for /f "delims=" %%a in ('wmic os get localdatetime ^| find "."') do set datetime=%%a
set /a end_time=!datetime:~0,4!*365*24*60*60*1000 + !datetime:~4,2!*30*24*60*60*1000 + !datetime:~6,2!*24*60*60*1000 + !datetime:~8,2!*60*60*1000 + !datetime:~10,2!*60*1000 + !datetime:~12,2!*1000 + !datetime:~15,3!
echo Starttime: !start_time!
echo Endtime: !end_time!
set /a elapsed_time=!end_time! - !start_time!
echo 100000000 Numbers Needed !elapsed_time!ms.
endlocal
pause
goto top

:oppwind
start cmd /k :1 | set "x=0" | :2 | echo %x%/100000000 | set /a "x+=1" | If %x% == 1000 (exit) else (goto 2)

:startcount
set "x=0"
:startcount26
echo %x%/100000000
set /a "x+=1"
If %x% == 100000000 (goto done) else (goto startcount26)
:dtd
set /p dtd1=.:.
%dtd1%
set /p dtd1=.:.
%dtd1%
set /p dtd1=.:.
%dtd1%
set /p dtd1=.:.
%dtd1%
set /p dtd1=.:.
%dtd1%
set /p dtd1=.:.
%dtd1%
set /p dtd1=.:.
%dtd1%