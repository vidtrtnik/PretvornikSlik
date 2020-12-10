@echo off
color f1
echo ------------------------------
echo ---  PRETVORNIK SLIK V PDF ---
echo ------------------------------
echo.
IF "%~1" == "" GOTO NoArgs

cd "%~dp0"

set q=90
REM set k=66%%
set h=1000
set b=0
set c=sRGB
set i=Plane
set r=0

echo Parametri:
echo -kvaliteta: %q%
REM echo -zmanjsanje: %k%
echo -zmanjsanje: %h%px (h)
echo -barvni pr: %c%
echo -interlace: %i%
echo -rotacija: %r% stopinj
echo.
echo Izbrana mapa: "%1"
echo.
pause
mkdir "%1_PR-PDF"
echo.
echo Pretvarjam... ... ...
.\imagemagick\magick.exe convert "%1\*.jpg" -format jpg -auto-orient -sampling-factor 4:2:0 -strip -geometry "x%h%>" -quality %q% -interlace %i% -rotate %r% -define jpeg:dct-method=float -colorspace %c% "%1_PR-PDF\document.pdf"
echo.
echo Dokoncano.
echo PDF dokument se nahaja v mapi: "%1_PR-PDF"
echo.
echo.
pause
exit

:NoArgs
color 04
echo Napaka: Ni mape...
pause
exit