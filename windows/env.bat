@echo off
set DOCKER_TLS_VERIFY=1
set DOCKER_CERT_PATH=C:\Users\<YOUR_USER>\.docker\machine\machines\default
set DOCKER_HOST=tcp://192.168.99.100:2376

REM set env automatically
REM 2 known bugs :
REM - DOCKER_CERT_PATH has to be set without quote
REM - the last comment of the output of docker-machine env dev needs to be ignored
REM for /f "tokens=2" %i in ('docker-machine env dev') do set %i
