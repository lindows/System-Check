@echo off
echo =========================
echo Launching Windows Check
echo =========================
echo.
echo -= Internet Options =-
inetcpl.cpl
echo -= Startup services =-
msconfig
echo -= Task Mgr =-
taskmgr.exe
echo -= Check Restore Point =-
rstrui.exe
echo -= System Restore =-
systempropertiesprotection
echo.
echo ==================
echo  Testing Wireless
echo ==================
echo.
echo Disabling Locla Area Connection
netsh interface set interface name="Local Area Connection" admin=disabled
echo Disabling Ethernet
netsh interface set interface name="Ethernet" admin=disabled
echo.
echo ================
echo  Pinging Google
echo ================
ping google.com
echo.
echo ==============
echo  Testing LAN
echo ==============
echo Disabling Wi-Fi
netsh interface set interface name="Wi-Fi" admin=disabled
echo Disabling Wireless
netsh interface set interface name="Wireless" admin=disabled
netsh interface set interface name="Local Area Connection" admin=enable
netsh interface set interface name="Ethernet" admin=enable
echo.
echo ================
echo  Pinging Google
echo ================
echo.
ping google.com
netsh interface set interface name="Wi-Fi" admin=enable
netsh interface set interface name="Wireless" admin=enable
pause


