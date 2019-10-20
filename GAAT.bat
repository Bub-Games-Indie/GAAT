@echo off
cls
echo Welcome to GAAT VNTEA1.0
echo Games And Activites testing Version Not Tested Early Access 1.0
echo Press Enter To Be Redirected To The Tests List.
set /p holder=
goto grtst

:grtst
set "quiz1="
for /F "skip=1 delims=" %%i in (test.txt) do if not defined quiz1 set "quiz1=%%i"
set "quiz2="
for /F "skip=2 delims=" %%i in (test.txt) do if not defined quiz2 set "quiz2=%%i"
set "quiz3="
for /F "skip=3 delims=" %%i in (test.txt) do if not defined quiz3 set "quiz3=%%i"
set "q1="
for /F "skip=4 delims=" %%i in (test.txt) do if not defined q1 set "q1=%%i"
set "q2="
for /F "skip=5 delims=" %%i in (test.txt) do if not defined q2 set "q2=%%i"
set "q3="
for /F "skip=6 delims=" %%i in (test.txt) do if not defined q3 set "q3=%%i"
set "quiz1ans="
for /F "skip=7 delims=" %%i in (test.txt) do if not defined quiz1ans set "quiz1ans=%%i"
set "quiz2ans="
for /F "skip=8 delims=" %%i in (test.txt) do if not defined quiz2ans set "quiz2ans=%%i"
set "quiz3ans="
for /F "skip=9 delims=" %%i in (test.txt) do if not defined quiz3ans set "quiz3ans=%%i"
goto tstpg

:tstpg
cls
echo Available tests:
echo (1) %quiz1%
echo (2) %quiz2%
echo (3) %quiz3%
set /p quisel=

if %quisel% == 1 goto quiz1pg1
if %quisel% == 2 goto quiz2pg1
if %quisel% == 3 goto quiz3pg1
if not %quisel% == 1 goto tstpg
if not %quisel% == 2 goto tstpg
if not %quisel% == 3 goto tstpg

:quiz1pg1
cls
echo Question1
echo %q1%
set /p q1q1=

if %q1q1% == %quiz1ans% goto q1fin else goto q1fal

:quiz2pg1
cls
echo Question1
echo %q2%
set /p q2q1=

if %q2q1% == %quiz2ans% goto q2fin else goto q2fal

:quiz3pg1
cls
echo Question1
echo %q2%
set /p q2q1=

if %q3q1% == %quiz3ans% goto q3fin else goto q3fal

:q1fin
cls
echo You have finished the quiz "%quiz1%" with all correct answers! Way to go!
set /p holder=
goto tstpg

:q1fal
cls
echo You finished the quiz "%quiz1%" with all wrong questions. Press enter to be redirected to the quiz selection page.
set /p holder=
goto tstpg

:q2fin
cls
echo You have finished the quiz "%quiz2%" with all correct answers! Way to go!
set /p holder=
goto tstpg

:q2fal
cls
echo You finished the quiz "%quiz2%" with all wrong questions. Press enter to be redirected to the quiz selection page.
set /p holder=
goto tstpg

:q3fin
cls
echo You have finished the quiz "%quiz3%" with all correct answers! Way to go!
set /p holder=
goto tstpg

:q3fal
cls
echo You finished the quiz "%quiz3%" with all wrong questions. Press enter to be redirected to the quiz selection page.
set /p holder=
goto tstpg
