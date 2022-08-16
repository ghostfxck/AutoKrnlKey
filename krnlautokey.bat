@echo off
color 0A
set /a a=1
:a
cls
start https://cdn.krnl.place/getkey.php
echo [%a%] Please solve the CAPTCHA, click the submit button then press any key to continue...
pause > nul
echo Please wait for 15 seconds
timeout /t 15 /nobreak
set /a a=%a%+1
if "%a%"=="5" (
    echo done!
    start https://cdn.krnl.ca/getkey.php
    pause
    exit
)
goto a
