@echo off
color f1
echo -------------------------
echo ---  PRETVORNIK SLIK  ---
echo -------------------------
echo.
IF "%~1" == "" GOTO NoArgs

cd "%~dp0"

set q=85
set k=66%%
set b=0
set c=sRGB
set i=Plane

echo Parametri:
echo -kvaliteta: %q%
echo -zmanjsanje: %k%
echo -barvni pr: %c%
echo -interlace: %i%
echo.
echo Izbrana mapa: "%1"
echo.
pause
mkdir "%1_PRETVORJENO"
echo.
echo Pretvarjam... ... ...
.\ImageMagick\mogrify.exe -format jpg -sampling-factor 4:2:0 -strip -scale %k% -quality %q% -interlace %i% -define jpeg:dct-method=float -colorspace %c% -path "%1_PRETVORJENO" "%1\*.jpg"
.\ImageMagick\mogrify.exe -format jpg -sampling-factor 4:2:0 -strip -scale %k% -quality %q% -interlace %i% -define jpeg:dct-method=float -colorspace %c% -path "%1_PRETVORJENO" "%1\*.jpeg"
.\ImageMagick\mogrify.exe -format jpg -sampling-factor 4:2:0 -strip -scale %k% -quality %q% -interlace %i% -define jpeg:dct-method=float -colorspace %c% -path "%1_PRETVORJENO" "%1\*.png"
echo.
echo Dokoncano.
echo.
echo.
pause
exit

:NoArgs
color 04
echo Napaka: Ni mape...
pause
exit