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

@pushd "%UserProfile%\Downloads"
@cd /d "%UserProfile%\Downloads"
taskkill /F /IM Zalo.exe

if exist Zalo*.exe goto I
if not exist Zalo*.exe goto D

:D
@echo Dang Tai Xuong Bang Trinh Duyet...
@echo Hay Cho Den Khi Tai Xuong Hoan Tat.
start https://zalo.me/download/zalo-pc?utm=90000
pause

:I
@echo Dang Cai Dat...
FOR %%i IN ("Zalo*.exe") DO Set FileName="%%i"
%FileName% /S
@echo Cai Dat Thanh Cong.
goto Lic

:Lic
::copy /y "ban_quyen_neu_co" "vao_day"
goto END

:END
del Zalo*.exe
echo.
echo Installation completed successfully