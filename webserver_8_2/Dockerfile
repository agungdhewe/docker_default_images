FROM php:8.2-apache
ENV TERM=xterm-256color

ARG DEBIAN_FRONTEND=noninteractive

COPY startup.sh /usr/local/bin
RUN chmod -v +x /usr/local/bin/startup.sh

COPY .bashrc /root/.bashrc

RUN echo "Asia/Jakarta" > /etc/timezone && dpkg-reconfigure -f noninteractive tzdata

ADD https://github.com/mlocati/docker-php-extension-installer/releases/latest/download/install-php-extensions /usr/local/bin/
RUN chmod +x /usr/local/bin/install-php-extensions 


RUN apt-get update 
RUN apt-get install -y mcrypt
RUN apt-get install -y nano 
RUN apt-get install -y inetutils-ping
RUN apt-get install -y nmap
RUN apt-get install -y telnet
RUN apt-get install -y unzip
RUN apt-get install -y git



### Use membacached as session management
# RUN apt-get install -y libmemcached-dev 
# RUN apt-get install -y zlib1g-dev 
# RUN apt-get install -y libssl-dev
# RUN apt-get install -y memcached
# RUN apt-get install -y libmemcached-tools
# RUN yes '' | pecl install -f memcached-3.2.0
# RUN docker-php-ext-enable memcached
# COPY docker-php-ext-sessionmemcached.ini /usr/local/etc/php/conf.d 


RUN install-php-extensions pdo_dblib
RUN install-php-extensions pdo_firebird
RUN install-php-extensions pdo_mysql
RUN install-php-extensions pdo_pgsql
RUN install-php-extensions mysqli
RUN install-php-extensions xdebug
RUN install-php-extensions zip
RUN install-php-extensions gd


COPY composer /usr/local/bin/composer
COPY docker-php-ext-xdebug.ini /usr/local/etc/php/conf.d 
COPY apache2.conf /etc/apache2/apache2.conf
COPY webserver.conf /etc/apache2/sites-available/webserver.conf

RUN chmod -v +x /usr/local/bin/composer
RUN a2dissite 000-default.conf
RUN rm /etc/apache2/sites-available/000-default.conf
RUN a2ensite webserver.conf
RUN a2enmod rewrite


#RUN echo PS1="'"'\[\e]0;\u@\h: \w\a\]${debian_chroot:+($debian_chroot)}\ \033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '"'" >> /app/.bashrc
#RUN echo alias ls="'"'ls --color=auto'"'" >> /app/.bashrc
# CMD ["/usr/local/bin/startup.sh", "apache2-foreground"]


WORKDIR /var/www/html





