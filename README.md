Scripts to run linux commands in docker containers

_Inspired by [docker compose scripts](https://github.com/docker/compose/tree/master/script) and [@jfrazelle dotfiles](https://github.com/jfrazelle/dotfiles)_

# requirements
Obviously docker engine needs to be installed before using these scripts

# Branch linux
In this branch, the scripts are designed to run under linux OS.

For more simplicity in usage, place the folder where are the dockerised-apps in your $PATH

# Branch windows
In this branch, the scripts intend to replace cygwin by some usefull docker containers.
Your docker-machine needs to be set up before using these tools.

If you're using cygwin or babun, use the scripts on the linux branch.

## env in cmd console
To register your docker-machine env launch
```batch
 > env.bat your_docker_machine
 ```

## env in PowerShell console
To register your docker-machine env launch
```PowerShell
 > env.ps1 your_docker_machine
 ```
