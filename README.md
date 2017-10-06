# How to start php debug server

specify your local ip address.
```
ip a // linux, macOS
ipconfig // windows
```

modify IP address in docker-compose.yml file.

```sh
docker-compose build
docker-compose up
``` 
output messages look like
```
Recreating phpdebug_php-debug_1 ... 
Recreating phpdebug_php-debug_1 ... done
Attaching to phpdebug_php-debug_1
php-debug_1  | httpd: Could not reliably determine the server's fully qualified domain name, using 172.17.0.3 for ServerNam
```

- Linux  
    access http://172.17.0.3/phpinfo.php
- mac OS  
    access http://localhost/phpinfo.php
# Reference
https://github.com/nickistre/docker-lamp/tree/centos-6.6

https://gist.github.com/chadrien/c90927ec2d160ffea9c4

https://medium.com/@fkei/docker-rpmdb-checksum-is-invalid-dcdpt-pkg-checksums-xxxx-amzn1-u-%E5%AF%BE%E5%87%A6%E6%B3%95-289b8c58d4a3