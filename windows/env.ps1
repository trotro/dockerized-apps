#$Env:DOCKER_TLS_VERIFY = "1"
#$Env:DOCKER_HOST = "tcp://192.168.99.100:2376"
#$Env:DOCKER_CERT_PATH = "C:\Users\ntrauwaen\.docker\machine\machines\dev"
#$Env:DOCKER_MACHINE_NAME = "dev"
# Run this command to configure your shell:
C:\Program Files\Docker Toolbox\docker-machine.exe env $args --shell powershell | Invoke-Expression
