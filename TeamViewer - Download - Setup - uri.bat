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
@echo                 Dang Cai Dat TeamViewer. Vui Long Cho
@echo off

taskkill /F /IM TeamViewer.exe
if exist %Windir%\SysWOW64 goto X64

if exist TeamViewer*32*.exe goto I32
if not exist TeamViewer*32*.exe goto D32

:D32
@echo Dang Tai Xuong...
powershell -Command "Invoke-WebRequest -Uri ''https://download.teamviewer.com/download/TeamViewer_Setup.exe' -OutFile 'TeamViewer_32_HieuckIT.exe'"
@echo Tai Xuong Hoan Thanh.
goto I32

:I32
@echo Dang Cai Dat...
FOR %%i IN ("TeamViewer*32*.exe") DO Set FileName="%%i"
%FileName% /S
@echo Cai Dat Thanh Cong.
goto Lic

:X64
if  exist TeamViewer*64*.exe goto I64
if not exist TeamViewer*64*..exe goto D64

:D64
@echo Dang Tai Xuong...
powershell -Command "Invoke-WebRequest -Uri 'https://download.teamviewer.com/download/TeamViewer_Setup_x64.exe' -OutFile 'TeamViewer_64_HieuckIT.exe'"
@echo Tai Xuong Hoan Thanh.
goto I64

:I64
@echo Dang Cai Dat...
FOR %%i IN ("TeamViewer*64*.exe") DO Set FileName="%%i"
%FileName% /S
@echo Cai Dat Thanh Cong.
goto Lic

:Lic
::copy /y "banquyenneuco" "vaoday"
goto END

:END
del TeamViewer*.exe
echo.
echo Installation completed successfully