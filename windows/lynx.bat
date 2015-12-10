@echo off
REM run lynx in a container
REM based on https://github.com/jfrazelle/dotfiles/blob/master/.dockerfunc
docker run --rm -it jess/lynx %*
REM EOF
