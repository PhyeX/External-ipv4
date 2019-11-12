 @echo off
set ip_address_string="IPv4 Address"
echo       Network Connection 
echo   ===========================================================
for /f "usebackq tokens=2 delims=:" %%f in (`ipconfig ^| findstr /c:%ip_address_string%`) do echo   Your IPv4 Address is...............:%%f
rem "This line gets the other IPv4 address from ipconfig."
FOR /F %%i IN ('curl -s "http://checkip.amazonaws.com"') do set external_ip=%%i
rem "This line makes a request the URL then return the IP adress If there is No Connection returns a empty string."
echo   Your External IPV4 Adress is.......: %external_ip%
echo   ===========================================================