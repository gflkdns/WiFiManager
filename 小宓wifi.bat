@ECHO OFF&PUSHD %~DP0 &TITLE 小宓wifi管理器
mode con cols=60 lines=20
color 00

:menu
cls
echo.
echo 欢迎使用小宓wifi
echo ==============================
echo.
echo 输入1，开启wifi
echo.
echo 输入2，关闭wifi
echo.
echo 输入3，查看wifi信息
echo.
echo ==============================
echo.
echo.

set /p user_input=请输入数字：
if %user_input% equ 1 goto 1 
if %user_input% equ 2 goto 2 
if %user_input% equ 3 goto 3 

:other
echo.
echo 没有进行任何操作
echo.
pause
exit
:1
@echo off
netsh wlan set hostednetwork mode=allow
set /p wifi_name=输入wifi名称：
set /p wifi_pass=输入wifi密码：
netsh wlan set hostednetwork ssid=%wifi_name% key=%wifi_pass%
netsh wlan start hostednetwork
echo.
echo wifi已经开启成功，名称：%wifi_name% 密码：%wifi_pass%
echo.
pause
exit
:2
@echo off
netsh wlan stop hostednetwork
echo.
echo wifi已经关闭
echo.
pause
exit
:3
@echo off
netsh wlan show hostednetwork
echo.
pause
exit