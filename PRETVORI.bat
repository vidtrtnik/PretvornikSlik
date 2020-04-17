@echo off
color f1
echo -------------------------
echo ---  PRETVORNIK SLIK  ---
echo -------------------------
echo.
IF "%~1" == "" GOTO NoArgs

cd "%~dp0"

set q=90
REM set k=66%%
set h=1000
set b=0
set c=sRGB
set i=Plane

echo Parametri:
echo -kvaliteta: %q%
REM echo -zmanjsanje: %k%
echo -zmanjsanje: %h%px (h)
echo -barvni pr: %c%
echo -interlace: %i%
echo.
echo Izbrana mapa: "%1"
echo.
pause
mkdir "%1_PRETVORJENO"
echo.
echo Pretvarjam... ... ...
REM .\imagemagick\mogrify.exe -format jpg -sampling-factor 4:2:0 -strip -scale %k% -quality %q% -interlace %i% -define jpeg:dct-method=float -colorspace %c% -path "%1_PRETVORJENO" "%1\*.jpg"
REM .\imagemagick\mogrify.exe -format jpg -sampling-factor 4:2:0 -strip -scale %k% -quality %q% -interlace %i% -define jpeg:dct-method=float -colorspace %c% -path "%1_PRETVORJENO" "%1\*.jpeg"
REM .\imagemagick\mogrify.exe -format jpg -sampling-factor 4:2:0 -strip -scale %k% -quality %q% -interlace %i% -define jpeg:dct-method=float -colorspace %c% -path "%1_PRETVORJENO" "%1\*.png"
.\imagemagick\mogrify.exe -format jpg -sampling-factor 4:2:0 -strip -geometry x%h% -quality %q% -interlace %i% -define jpeg:dct-method=float -colorspace %c% -path "%1_PRETVORJENO" "%1\*.jpg"
.\imagemagick\mogrify.exe -format jpg -sampling-factor 4:2:0 -strip -geometry x%h% -quality %q% -interlace %i% -define jpeg:dct-method=float -colorspace %c% -path "%1_PRETVORJENO" "%1\*.jpeg"
.\imagemagick\mogrify.exe -format jpg -sampling-factor 4:2:0 -strip -geometry x%h% -quality %q% -interlace %i% -define jpeg:dct-method=float -colorspace %c% -path "%1_PRETVORJENO" "%1\*.png"
echo.
echo Dokoncano.
echo Slike se nahajajo na: "%1_PRETVORJENO"
echo.
echo.
pause
exit

:NoArgs
color 04
echo Napaka: Ni mape...
pause
exit