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
if exist %Windir%\SysWOW64 goto X64

if exist ZaloSetup-23.1.1.exe goto I32

:D32
wget -q --show-progress https://res-download-pc-te-vnno-pt-2.zadn.vn/hybrid/ZaloSetup-23.1.1.exe goto I32

:I32
FOR %%i IN ("Zalo*.exe") DO Set FileName="%%i"
%FileName% /S
@echo Cai Dat Thanh Cong.

goto END

:X64
if  exist ZaloSetup-23.1.1.exe goto I64

:D64
wget -q --show-progress https://res-download-pc-te-vnno-pt-2.zadn.vn/hybrid/ZaloSetup-23.1.1.exe goto I64

:I64
FOR %%i IN ("Zalo*.exe") DO Set FileName="%%i"
%FileName% /S
@echo Cai Dat Thanh Cong.

goto END

:END
del ZaloSetup-23.1.1.exe
echo.
echo Installation completed successfully