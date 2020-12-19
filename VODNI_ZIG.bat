@echo off
SETLOCAL EnableDelayedExpansion

color f1
echo -------------------------
echo ---  DODAJ VODNI ZIG  ---
echo -------------------------
echo.
IF "%~1" == "" GOTO NoArgs

cd "%~dp0"

set k=6
set x=45
set y=25

echo.
echo Izbrana mapa: "%1"
set /p watermark="Vodni zig:"
echo.
pause
mkdir "%1_PR-VZ"
echo.
echo Dodajam vodni zig...

for /f "usebackq delims=|" %%f in (`dir /b "%1"`) do (

for /f %%i in ('.\imagemagick\magick.exe identify -format "%%w" "%1\\%%f"') do set width=%%i 
for /f %%i in ('.\imagemagick\magick.exe identify -format "%%h" "%1\\%%f"') do set height=%%i 

if !width! gtr !height! set wres=!width!
if !height! gtr !width! set wres=!height!
set /a "wres=!wres!/%k%"

REM echo "%1\\%%f"
REM echo !width! 
REM echo !height! 
REM echo !wres!

.\imagemagick\magick.exe convert %watermark% -strip -resize !wres! %watermark%_tmp.png 
echo %1\\%%f
.\imagemagick\magick.exe convert "%1\\%%f" %watermark%_tmp.png -gravity southeast -geometry +%x%+%y% -strip -composite "%1_PR-VZ\\%%f"

)

echo.
echo Dokoncano.
echo Slike se nahajajo na: "%1_PR-VZ"
echo.
echo.
pause
exit

:NoArgs
color 04
echo Napaka: Ni mape...
pause
exit