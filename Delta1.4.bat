@echo off

::Color
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (set "DEL=%%a" & set "COL=%%b")

:START10
cls
title ???
color 0f
echo Press "Enter"/"Return" to start
pause >nul -1
color 0f
:START1
title DELTA Command
cls
echo           _____                    _____                    _____     _____                    _____          
echo          /\    \                  /\    \                  /\    \   /\    \                  /\    \         
echo         /::\    \                /::\    \                /::\____\ /::\    \                /::\    \        
echo        /::::\    \              /::::\    \              /:::/    / \:::\    \              /::::\    \       
echo       /::::::\    \            /::::::\    \            /:::/    /   \:::\    \            /::::::\    \      
echo      /:::/\:::\    \          /:::/\:::\    \          /:::/    /     \:::\    \          /:::/\:::\    \     
echo     /:::/  \:::\    \        /:::/__\:::\    \        /:::/    /       \:::\    \        /:::/__\:::\    \    
echo    /:::/    \:::\    \      /::::\   \:::\    \      /:::/    /        /::::\    \      /::::\   \:::\    \   
echo   /:::/    / \:::\    \    /::::::\   \:::\    \    /:::/    /        /::::::\    \    /::::::\   \:::\    \  
echo  /:::/    /   \:::\ ___\  /:::/\:::\   \:::\    \  /:::/    /        /:::/\:::\    \  /:::/\:::\   \:::\    \ 
echo /:::/____/     \:::!    !/:::/__\:::\   \:::\____\/:::/____/        /:::/  \:::\____\/:::/  \:::\   \:::\____\
echo \:::\    \     /:::!____!\:::\   \:::\   \::/    /\:::\    \       /:::/    \::/    /\::/    \:::\  /:::/    /
echo  \:::\    \   /:::/    /  \:::\   \:::\   \/____/  \:::\    \     /:::/    / \/____/  \/____/ \:::\/:::/    / 
echo   \:::\    \ /:::/    /    \:::\   \:::\    \       \:::\    \   /:::/    /                    \::::::/    /  
echo    \:::\    /:::/    /      \:::\   \:::\____\       \:::\    \ /:::/    /                      \::::/    /   
echo     \:::\  /:::/    /        \:::\   \::/    /        \:::\    \\::/    /                       /:::/    /    
echo      \:::\/:::/    /          \:::\   \/____/          \:::\    \\/____/                       /:::/    /     
echo       \::::::/    /            \:::\    \               \:::\    \                            /:::/    /      
echo        \::::/    /              \:::\____\               \:::\____\                          /:::/    /       
echo         \::/____/                \::/    /                \::/    /                          \::/    /        
echo          ~~                       \/____/                  \/____/                            \/____/          
echo.
echo [Hello %USERNAME%, type "help" to get started]
set /p COMMAND=">>> "
if %COMMAND%==cmd goto cmd1
if %COMMAND%==help goto help1
if %COMMAND%==exit goto exit1
if %COMMAND%==light goto light1
if %COMMAND%==dark goto dark1
if %COMMAND%==text_file goto TEXM
if %COMMAND%==secret goto SECRET
if %COMMAND%==del goto DEL1
if %COMMAND%==taskkill goto KILLTASK
if %COMMAND%==yts goto ytsm
if %COMMAND%==move goto MOVE1
if %COMMAND%==copy goto COPY1
if %COMMAND%==websearch goto WS1
if %COMMAND%==wsearch goto WS1
if %COMMAND%==webs goto WS1
if %COMMAND%==ws goto WS1
if %COMMAND%==time goto TIME1
if %COMMAND%==startapp goto STARTAPP1
if %COMMAND%==speak goto SPEAK1
if %COMMAND%==math goto MATH1
if %COMMAND%==ascii goto ASCII1
if %COMMAND%==color goto COLOR1
if %COMMAND%==ren goto RENAME1
if %COMMAND%==rename goto RENAME1
if %COMMAND%==superlight goto SUPERLIGHT1
if %COMMAND%==weather goto WEATHER1
if %COMMAND%==ping goto PING1
if %COMMAND%==date goto date1
if %COMMAND%==shutdown goto SHUTDOWN1
if %COMMAND%==length goto LENGTH
if %COMMAND%==size goto MODE
if %COMMAND%==superdark goto SUPERDARK1
if %COMMAND%==calc goto CALC1
if %COMMAND%==todo goto TODO1
if %COMMAND%==advanced goto advanced1
echo Invalid command, type "help" for a list of commands.
timeout /t 4
cls
goto START1

:SUPERDARK1
color 01
cls
goto START1

:cmd1
cls
title DELTA CMD ask
set result=false
set /p cmdask=Open command prompt(1) or have it open in this window(2)?: 
if %cmdask%==1 start cmd.exe
if %cmdask%==2 goto cmd2
if %cmdask% NEQ 1 set result=true
if "%result%" == "true" (
	echo Invalid!
)
timeout /t 3 >nul /nobreak
goto START1

:cmd2
cls
cmd
goto START1

:help1
cls
title DELTA Help
echo ____________________________________________________________
echo ! cmd - opens command prompt                               !
echo ! help - opens this menu, dummy                            !
echo ! exit - exits this program                                !
echo ! light - puts the program into light mode                 !
echo ! dark - puts the program into dark mode                   !
echo ! text_file - make or change a text file                   ! 
echo ! del - delete a file                                      !
echo ! taskkill - kill a task                                   !
echo ! yts - youtube search                                     !
echo ! move - moves files                                       !
echo ! copy - copies files                                      !
echo ! websearch, ws, webs, wsearch - lets you go into websites !
echo ! time - shows time                                        !
echo ! startapp - starts an application                         !
echo ! speak - opens speak menu                                 !
echo ! math - calculator                                        !
echo ! color - allows you to change the colors                  !
echo ! superlight - dont do it                                  !
echo ! weather - go's to a weather site of your choice          !
echo ! ping - pings                                             !
echo ! date - displays the date                                 !
echo ! shutdown - goes to shutdown menu                         !
echo ! length - measures length of text                         !
echo ! size - lets you change the size of the window            !
echo ! calc - opens windows calculator app                      !
echo ! ascii - brings you to ascii website selection            !
echo ! todo - brings you to your own todo list                  !
echo ! advanced - opens the advanced version of Delta           !
echo ------------------------------------------------------------
pause
cls
goto START1

:exit1
cls
exit

:light1
color f0
cls
goto START1

:dark1
color 0f
cls
goto START1

:SECRET
cls
title DELTA Secret??
echo this is a secret
timeout /t 2
cls
echo dont tell anyone
timeout /t 2
cls
echo shhhhhh
timeout /t 2
cls
echo lol its just shutdown
timeout /t 2
cls
shutdown /p
goto START1

:DEL1
cls
title DELTA Delete File
set /p FILEDEL=What directory?: 
del /p %FILEDEL%
cls
goto START1

:KILLTASK
cls
title DELTA Taskkill
echo this is the tasklist (all open tasks)
timeout /t 6
cls
echo *the PID is the first number after the task name*
timeout /t 5
cls
tasklist
set /p TK=What task(PID #) do you want to kill?: 
taskkill /PID %TK%
cls
goto START1

:ytsm
cls
title DELTA YouTube Search
echo supported browsers:
echo Microsoft Edge - edge  
echo Google Chrome - chrome 
echo Brave - brave          
set /p ytsm1=What would you like to use: 
if %ytsm1%==edge goto ytsm2
if %ytsm1%==chrome goto ytsm3
if %ytsm1%==brave goto ytsm4
cls
echo invalid browser
cls
goto START1

:ytsm2
cls
set /p ytsm5=What would you like to search?: 
start msedge.exe https://www.youtube.com/results?search_query="%ytsm5%"
cls
goto START1

:ytsm3
cls
set /p ytsm6=What would you like to search?: 
start chrome.exe https://www.youtube.com/results?search_query="%ytsm6%"
cls
goto START1

:ytsm4
cls
set /p ytsm7=What would you like to search?: 
start brave.exe https://www.youtube.com/results?search_query="%ytsm7%"
cls
goto START1

:MOVE1
cls
title DELTA Move File
set /p movem=What file do you want to move?: 
set /p movem1=What is the directory of the folder you want to move the file to?: 
move %movem% %movem1%
goto START1

:COPY1
cls
title DELTA Copy File
set /p copyc=What is the directory of the file you want to copy?: 
set /p copyc1=What is the name of the copied file going to be?: 
copy %copyc% %copyc1%
goto START1

:WS1
cls
title DELTA Web Search
set /p webs=What website do you want to go to? (**MUST INCLUDE WWW and WEB ENDER, ex. ".COM"**) : 
start "" %webs%
cls
goto START1

:TIME1
cls
title DELTA Time
time /t
timeout /t 5
cls
goto START1

:STARTAPP1
cls
title DELTA App Start
set /p sa=What application would you like to open?: 
start %sa%
cls
goto START1

:SPEAK1
cls
start DELTAspeak.vbs
cls
goto START1

:MATH1
cls
title DELTA Do Math
echo *ONLY AVAILABLE TO DO TWO NUMBERS. NO LETTERS*
set /p a=What do you want the first number to be set to?: 
set /p b=What do you want the second number to be set to?: 
set /p g=What operation do you want to do (add, subtract, multiply, divide)?: 
set /a c=%a%+%b%
set /a d=%a%-%b%
set /a e=%a%*%b%
set /a f=%a%/%b%
if %g%==subtract goto MATH2
if %g%==multiply goto MATH3
if %g%==divide goto MATH4
cls
if %g%==add echo %c%
pause
cls
goto START1

:MATH2
cls
echo %d%
pause
cls
goto START1

:MATH3
cls
echo %e%
pause
cls
goto START1

:MATH4
cls
echo %f%
pause
cls
goto START1

:ASCII1
cls
title DELTA ASCII
set /p asciiask=Ascii Art (1) or Ascii Text (2)?: 
if %asciiask%==1 start "" https://www.asciiart.eu/
if %asciiask%==2 start "" https://patorjk.com/software/taag/#p=display&f=Graffiti&t=Type%20Something
cls
goto START1

:COLOR1
cls
title DELTA Background Color
echo 0 = Black       8 = Gray
echo 1 = Blue        9 = Light Blue
echo 2 = Green       A = Light Green
echo 3 = Aqua        B = Light Aqua
echo 4 = Red         C = Light Red
echo 5 = Purple      D = Light Purple
echo 6 = Yellow      E = Light Yellow
echo 7 = White       F = Bright White
echo --------------------------------
set /p colorask=What color do you want to set the background to (Reg. cmd color command colors)?: 
color %colorask%
cls
goto START1

:RENAME1
cls
title DELTA Rename File
set /p renamer=What directory do you want to rename?: 
set /p renamer1=What do you want to rename the file?: 
ren %renamer% %renamer1%
cls
goto START1

:SUPERLIGHT1
cls
color fe
cls
goto START1

:WEATHER1
cls
title DELTA Weather Check
echo What weather website do you use?
echo Weather Underground / Wunderground (1)
echo The Weather Channel (2)
echo DarkSky (3)
echo --------------------------------------
set /p other=Do you use another site?(y/n): 
if %other%==yes goto WEATHER3
if %other%==y goto WEATHER3
if %other%==no goto WEATHER2
if %other%==n goto WEATHER2
echo Invalid!
timeout /t 2
goto START1

:WEATHER2
set /p weatherc=1, 2, or 3?: 
if %weatherc%==1 start "" www.wunderground.com
if %weatherc%==2 start "" www.weather.com
if %weatherc%==3 start "" www.darksky.net
cls
goto START1

:WEATHER3
set /p weatherc12=Website Name?(Must Include WWW and .COM or .NET etc): 
start "" %weatherc12%
cls
goto START1

:PING1
cls
title DELTA Ping
set /p pingnum=How many ping moduels (1 - 5)?: 
set /p pingdest=What do you want to ping (Website / IP)?: 
set /p ays=Are you sure (y/n)?: 
set /p pl=Do you want to loop this (y/n)?: 
if %ays%==n goto START1
if %pingnum%==1 goto pingmods1
if %pingnum%==2 goto pingmods2
if %pingnum%==3 goto pingmods3
if %pingnum%==4 goto pingmods4
if %pingnum%==5 goto pingmods5
echo Invalid!
pause
cls
goto START1

:pingmods1
echo ping %pingdest% > pingmod1.bat
start pingmod1.bat
if %pl%==n goto START1
timeout /t 15
taskkill

:pingmods2
echo ping %pingdest% > pingmod2.bat
echo ping %pingdest% > pingmod21.bat
start pingmod2.bat
start pingmod21.bat
goto START1

:pingmods3
echo ping %pingdest% > pingmod3.bat
echo ping %pingdest% > pingmod31.bat
echo ping %pingdest% > pingmod32.bat
start pingmod3.bat
start pingmod31.bat
start pingmod32.bat
goto START1

:pingmods4
echo ping %pingdest% > pingmod4.bat
echo ping %pingdest% > pingmod41.bat
echo ping %pingdest% > pingmod42.bat
echo ping %pingdest% > pingmod43.bat
start pingmod4.bat
start pingmod41.bat
start pingmod42.bat
start pingmod43.bat
goto START1

:pingmods5
echo ping %pingdest% > pingmod5.bat
echo ping %pingdest% > pingmod51.bat
echo ping %pingdest% > pingmod52.bat
echo ping %pingdest% > pingmod53.bat
echo ping %pingdest% > pingmod54.bat
start pingmod5.bat
start pingmod51.bat
start pingmod52.bat
start pingmod53.bat
start pingmod54.bat
goto START1

:TEXM
cls
title DELTA Text
echo create - creates a file
echo override - overrides a file
echo exit - exits menu
echo ---------------------------
set /p choicec=What do you want to do (create or override)?: 
if %choicec%==create goto TEXM1
if %choicec%==override goto TEXM2
if %choicec%==exit goto START1
cls
echo Invalid!
timeout /t 2
cls
goto START1

:TEXM1
cls
set /p dir1=What is the directory of the file you want to make (e.g. C:\Users\%USERNAME%\Desktop\"test" *no .txt needed*)?: 
set /p dir2=What do you want inside the file (e.g. "test")?: 
echo %dir2%>%dir1%.txt
cls
goto START1

:TEXM2
cls
set /p dir3=What file do you want to override (e.g. C:\Users\%USERNAME%\Desktop\"test" *no .txt needed*)?: 
set /p dir4=What do you want the file to be set to (e.g. test)?: 
echo %dir4%>>%dir3%.txt
cls
goto START1

:DATE1
cls
title DELTA Date
date /t
timeout /t 5
cls
goto START1

:SHUTDOWN1
cls
title DELTA Shutdown
set /p sdhelp=Do you need help with this command (y/n)?: 
if %sdhelp%==y goto SDHELP1
if %sdhelp%==n goto SHUTDOWN2
echo Invalid!
timeout /t 2
goto START1

:SHUTDOWN2
cls
set /p sdask=What do you want to do with this shutdown (Any regular shutdown args, no "shutdown" needed, e.g. /i)?: 
if %sdask%==/i shutdown /i
if %sdask%==/l shutdown /l
if %sdask%==/s shutdown /s
if %sdask%==/r shutdown /r
if %sdask%==/a shutdown /a
if %sdask%==/p shutdown /p
if %sdask%==/h shutdown /h
if %sdask%==/hybrid shutdown /hybrid /s
if %sdask%==/fw shutdown /s /fw
if %sdask%==/o shutdown /o /r
if %sdask%==/t set /p slasht=What do you want to do (shutdown or restart)?: 
if %sdask%==/t set /p slasht1=How much time do you want to wait for (valid range is 0-315360000(Ten Years), default is 30)?: 
if %slasht%==shutdown shutdown /s /t %slasht1%
if %slasht%==restart shutdown /r /t %slasht1%
echo Invalid!
goto START1

:SDHELP1
cls
echo 1: I need help with all args.
echo 2: I don't mean to be here.
set /p whathelpwithsd=What do you need help with?: 
if %whathelpwithsd%==1 goto ARGSHELP1
if %whathelpwithsd%==2 goto SHUTDOWN1

:ARGSHELP1
cls
echo /i: Displays graphical interface
echo /l: Logs off the computer
echo /s: Regular shutdown
echo /r: Full shutdown and restart
echo /a: Abort system shutdown
echo /p: Turns off computer without warning or time-out
echo /h: Hibernates / sleeps the computer
echo /hybrid: Performs a shutdown of the computer and prepares it for fast startup
echo /fw: Cause the boot to go to the firmware user interface
echo /o: Go to advanced boot option and restart the computer
echo /t: Set the time-out period before shutdown
timeout /t -1
cls
goto SHUTDOWN1

:LENGTH
cls
set /p lengthask=What do you want to measure the length of? (no spaces): 
set "MYSTRING=%lengthask%"
(echo "%MYSTRING%" & echo.) | findstr /O . | more +1 | (set /P RESULT= & call exit /B %%RESULT%%)
set /A STRLENGTH=%ERRORLEVEL%-5
cls
echo string "%MYSTRING%" length = %STRLENGTH%
pause 3 >nul /nobreak
goto START1

:MODE
cls
set /p modeask=What size do you want to set the window to? (pixels, width by height. eg, 50,20): 
mode %modeask%
cls
goto START1

:CALC1
cls
start calc.exe
cls
goto START1

:TODO1
cls
set /p askwhether=Do you want to add a task (1) or check off a task (2)? (or exit, "exit"): 
if %askwhether%==1 goto TODO2
if %askwhether%==2 goto TODO4
if %askwhether%==exit goto START1

:TODO2
cls
set /p askdo=What do you need to do?: 
echo %askdo% >> todo.txt
cls
set /p askagain=Do you need to do anything else? (y/n):
if %askagain%==y goto TODO1
if %askagain%==yes goto TODO1
if %askagain%==n goto START1
if %askagain%==no goto START1

:TODO3
goto TODO2

:TODO4
cls
echo ----The following is the ToDo list----
type todo.txt
echo --------------------------------------
set /p asktask=What task do you want to check off?: 
findstr /c:"%asktask%" todo.txt > temp.txt
if %ERRORLEVEL%==0 (
  findstr /v "%asktask%" todo.txt > temp.txt
  del todo.txt
  ren temp.txt todo.txt
  echo Task "%asktask%" has been checked off.
) else (
  echo Task "%asktask%" was not found in the list.
)
timeout /t 5
goto TODO1

:advanced1
start advanced.bat
exit