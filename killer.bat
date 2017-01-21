@echo off
REM Crafted and Coded by DamSimm
title DSIC Labs : BSP Killer Pro
color 9F
cls

:Menu
echo -
echo -
echo -
echo This Batch file will delete invalid BSPs off this Computer
echo ----------------------------
echo [Choose which info you need]
echo [1 for Idiot Mode          ]
echo [2 for ECPOT Mode          ]
echo ----------------------------
CHOICE /C 12 /N /M "Choose one!"
Goto %ERRORLEVEL%

:1
@echo on
CALL :DEL_FILE "C:\Program Files (x86)\Steam\steamapps\common\GarrysMod\garrysmod\download\maps\ttt_dsilabs_v1.bsp"
CALL :DEL_FILE "C:\Program Files (x86)\Steam\steamapps\common\GarrysMod\garrysmod\download\maps\ttt_dsilabs_v2.bsp"
pause

:2
@echo on
CALL :DEL_FILE ".\garrysmod\download\maps\ttt_dsilabs_v1.bsp"
CALL :DEL_FILE ".\garrysmod\download\maps\ttt_dsilabs_v2.bsp"
pause

:DEL_FILE
    ::ECHO Removing file %1.
    IF EXIST %1 ( DEL /Q %1 )
    GOTO:EOF