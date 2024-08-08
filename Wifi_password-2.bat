@echo off
:: Get the name of the connected Wi-Fi network
for /f "tokens=2 delims=:" %%i in ('netsh wlan show interfaces ^| findstr "^....SSID"') do set SSID=%%i
set SSID=%SSID:~1%

:: Retrieve and display the Wi-Fi password for the connected network
echo Current Wi-Fi Network Password:
netsh wlan show profile name="%SSID%" key=clear | findstr Key

:: Display additional details about the current connected network
echo.
echo Additional Wi-Fi Details:
netsh wlan show interfaces

pause
