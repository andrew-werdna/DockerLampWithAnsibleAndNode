README
======

DockerLampWithAnsibleAndNode
-------------
(Docker/PHP/MariaDB/Ansible/NodeJS) easy setup

---------------------------------------------------------------------------

**NOTE**: If you are not going to use ansible just remove the ansible service from the compose file. OR if you are not doing anything with AWS just remove the **second** volume from the ansible section

Also included:
--------------

For Windows users who have to use `docker-machine` there is a bash script to help with creation/host finagling
```
bash scripts/machine.sh -m <machine name here> -h <host name here> -a create
bash scripts/machine.sh -m <machine name here> -h <host name here> -a destroy
bash scripts/machine.sh -m <machine name here> -h <host name here> -a start
bash scripts/machine.sh -m <machine name here> -h <host name here> -a stop
```
^ this will automatically add/remove the machine's IP address to your hosts file

Once you're up and running, you should just go to `<your host name>:8000` (or whatever port you specified in your server run command)

Don't forget to change your MariaDB cred info in the docker-compose!

Have fun!
