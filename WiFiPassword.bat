@ECHO OFF&PUSHD %~DP0 &TITLE wifi密码查看器
mode con cols=60 lines=29
color 0E

echo 目前可供查看的WiFi列表请看下方的用户配置文件：
echo .
netsh wlan show profiles
echo .
set /p user_input=请输入要查看密码的全名，然后按回车键：
:showpass
echo.
netsh wlan show profile name=%user_input% key=clear
echo.
pause
exit