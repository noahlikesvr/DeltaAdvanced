@echo off

SETLOCAL EnableDelayedExpansion
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do     rem"') do (
  set "DEL=%%a"
)

findstr /C:"accepted" terms.csv >nul
if %errorlevel% == 0 (
    echo Terms have been accepted, skipping first steps
    goto :skipWarn
)

:warn

    title WARNING
    mode 100,35
    call :colorEcho 04 "WARNING!"
    echo.
    call :colorEcho 0c "This program is powerful!"
    echo.
    call :colorEcho 0c "Any damage to your computer is solely on you."
    echo.
    echo.
    
    echo If you agree to this risk, type "continue"
    echo If you do not agree, type "exit"
    
    set /p terms=">>> "

    if %terms%==exit (
      start Delta1.4.bat
      exit
    )

    if %terms%==continue echo accepted >> terms.csv
    if %terms%==continue goto main

    cls
    call :colorEcho 0a "Please type 'continue' or 'exit'"
    timeout /t 4
    cls
    goto warn

:main
cls
title Main
mode 100,35
call :colorEcho 0a "Input command"
echo.
set /p command=">>> "
if %command%==backup (
  cls
  goto backup
)
if %command%==back (
  start Delta1.4.bat
  exit
)
if %command%==exit (
  exit
)
if %command%==disagree (
  del terms.csv
  exit
)
cls
call :colorEcho 0c "Please enter valid command"
timeout /t 3 >nul
cls
goto main

:backup
cls
title Backup
Echo What directory do you want to backup?
set /p backupdirask=">>> "
cls
Echo Where do you want to back this up to? (Must be new folder)
set /p backuptoask=">>> "
md %backuptoask%
copy %backupdirask% %backuptoask%
cls
call :colorEcho 0a "Done'd"
timeout /t 3 >nul
cls
goto main

:skipWarn
    goto main

:colorEcho
echo off
<nul set /p ".=%DEL%" > "%~2"
findstr /v /a:%1 /R "^$" "%~2" nul
del "%~2" > nul 2>&1i