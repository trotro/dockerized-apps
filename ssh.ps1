REM based on https://hub.docker.com/r/sakai135/ssh-client/
function ssh
{
    $cur = (Get-Item -Path ".\" -Verbose).FullName -replace '\\', '/' -replace '^C:/', '/c/'
    $dir = $env:USERPROFILE -replace '\\', '/' -replace '^C:/', '/c/'
    docker run --rm -it -v "$dir/.ssh`:/root/.ssh-copy" -v "$cur`:$cur" -w $cur sakai135/ssh-client ssh $args
}
