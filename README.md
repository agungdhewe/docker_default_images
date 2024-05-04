# docker_default_images

Buat Network yang diperlukan
$ ./devnetwork.sh

Buat Volume yang akan diakses dari container
$ ./volume-fgtadbdata.sh
$ ./volume-fgtafsdata.sh


Build Image
$ docker compose -f webserver_8_2.yml build
$ docker compose -f mariadb_10_6.yml
