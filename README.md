

Introduction
--------------

These code snipnets helps to bypass systemctl d-bus issues in docker:

Issues: https://github.com/docker/docker/issues/2296

`bash-4.2# systemctl list-units`

`Failed to get D-Bus connection: No connection to service manager.`

The project consists of two files:

* runDocker.sh.
* connectDocker.sh.

runDocker.sh
-------------
The runDocker.sh script create a docker container from an image with `/usr/sbin/init`:

`sudo ./runDocker.sh --name [Name of tobe Container] --IMAGE [Name of the Image]`

connectDocker.sh
------------------
The connectDocker.sh script is to be used to connect to the container created from the runDocker.sh script.
Note: The connectDocker.sh helps ti bypass the login prompt as in runDocker.sh the container is run with `/usr/sbin/init`

eg:

`sudo ./connectDocker.sh --name redis`

redis id is: c66fc59a6f90 

[root@c66fc59a6f90 /]# exit
