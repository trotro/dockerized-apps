@echo off
REM requirement : docker-machine version 0.5.2 ( 0456b9f )
REM %1 : name of your boot2docker VM
REM Run this command to configure your shell:
FOR /f "tokens=*" %i IN ('docker-machine env %1 --shell cmd') DO %i
