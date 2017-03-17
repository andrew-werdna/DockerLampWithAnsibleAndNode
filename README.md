README
======

SymfonyDocker
-------------
(Docker/PHP/MariaDB) easy setup for Symfony

Run the following commands to get started with Symfony's latest LTS edition
---------------------------------------------------------------------------

**NOTE**: If you are not going to use ansible just remove the ansible service from the compose file. OR if you are not doing anything with AWS just remove the **second** volume from the ansible section

```
docker-compose up
docker exec -it symfony_app bash
symfony new . lts
cd web
php -S 0.0.0.0:8000 /var/www/html/vendor/symfony/symfony/src/Symfony/Bundle/FrameworkBundle/Resources/config/router_dev.php
```

For whatever reason I could not get
```
php app/console -vvv server:run 0.0.0.0:8000
```
to work at any time.
It always failed with
```
php.DEBUG: fsockopen(): unable to connect to 0.0.0.0:8000 (Connection refused) {"type":2,"file":"/var/www/html/vendor/symfony/symfony/src/Symfony/Bundle/FrameworkBundle/Command/ServerCommand.php","line":61,"level":28928}
```

Also included:
--------------

For Windows users who have to use `docker-machine` there is a bash script to help with creation/host finagling
```
bash machine.sh -m <machine name here> -h <host name here> -a create
bash machine.sh -m <machine name here> -h <host name here> -a destroy
bash machine.sh -m <machine name here> -h <host name here> -a start
bash machine.sh -m <machine name here> -h <host name here> -a stop
```
^ this will automatically add/remove the machine's IP address to your hosts file

Once you're up and running, you should just go to `<your host name>:8000` (or whatever port you specified in your server run command)

Don't forget to change your MariaDB cred info in the docker-compose!

Have fun!
