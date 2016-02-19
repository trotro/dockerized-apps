@echo off
REM run nmap in a container
REM based on https://github.com/jfrazelle/dotfiles/blob/master/.dockerfunc
docker run --rm -it --net host jess/nmap %*
REM EOF
