@echo off
:: Get the name of the connected Wi-Fi network
for /f "tokens=2 delims=:" %%i in ('netsh wlan show interfaces ^| findstr "^....SSID"') do set SSID=%%i
set SSID=%SSID:~1%
:: Retrieve the Wi-Fi password for the connected network
netsh wlan show profile name="%SSID%" key=clear | findstr Key
pause
