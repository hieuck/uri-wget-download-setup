@ECHO OFF
title _Hieuck.IT_'s Windows Application
color 0B
mode con:cols=100 lines=15
@cls
echo.
echo.
echo.
@echo     ��          ���   ��� ��� ������ ���   ���  �����  ���  �� ��� ���������
@echo       �         ���   ��� ��� ���    ���   ��� ���   � ��� ��  ���    ���
@echo        ��       ��������� ��� ������ ���   ��� ���     �����   ���    ���
@echo       �         ���   ��� ��� ���    ���   ��� ���   � ��� ��  ���    ���
@echo     ��   �����  ���   ��� ��� ������ ���������  �����  ���  �� ���    ��� �
@echo.  
@echo                 Dang Cai Dat Zalo. Vui Long Cho
@echo off

taskkill /F /IM Zalo.exe
if exist %Windir%\SysWOW64 goto X64

if exist Zalo*32*.exe goto I32
if not exist Zalo*32*.exe goto D32

:D32
@echo Dang Tai Xuong...
wget --no-check-certificate -O Zalo-32_HieuckIT.exe -q --show-progress https://zalo.me/download/zalo-pc?utm=90000
@echo Tai Xuong Hoan Thanh.
goto I32

:I32
@echo Dang Cai Dat...
FOR %%i IN ("Zalo*32*.exe") DO Set FileName="%%i"
%FileName% /S
@echo Cai Dat Thanh Cong.
goto Lic

:X64
if  exist Zalo*64*.exe goto I64
if not exist Zalo*64*..exe goto D64

:D64
@echo Dang Tai Xuong...
wget --no-check-certificate -O Zalo-64_HieuckIT.exe -q --show-progress https://zalo.me/download/zalo-pc?utm=90000
@echo Tai Xuong Hoan Thanh.
goto I64

:I64
@echo Dang Cai Dat...
FOR %%i IN ("Zalo*64*.exe") DO Set FileName="%%i"
%FileName% /S
@echo Cai Dat Thanh Cong.
goto Lic

:Lic
::copy /y "banquyenneuco" "vaoday"
goto END

:END
del Zalo*.exe
echo.
echo Installation completed successfully