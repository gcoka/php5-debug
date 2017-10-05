FROM centos:6.6

# install http
RUN rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-6.noarch.rpm

# install httpd
RUN yum -y install httpd vim-enhanced bash-completion unzip

# install php
RUN yum install -y php php-mysql php-devel php-gd php-pecl-memcache php-pspell php-snmp php-xmlrpc php-xml

# Install xdebug for php debugging
RUN yum install -y php-pecl-xdebug
RUN echo "xdebug.default_enable = 1" > /etc/php.d/xdebug_settings.ini \
    && echo "xdebug.remote_enable=on" >> /etc/php.d/xdebug_settings.ini \
    && echo "xdebug.remote_autostart=on" >> /etc/php.d/xdebug_settings.ini \
    && echo "xdebug.remote_connect_back = on" >> /etc/php.d/xdebug_settings.ini \
    && echo "xdebug.remote_port = 9000" >> /etc/php.d/xdebug_settings.ini

# add phpinfo() for container build test
RUN echo "<?php phpinfo(); ?>" > /var/www/html/phpinfo.php

EXPOSE 80

# Start web server
CMD ["httpd", "-D", "FOREGROUND"]
