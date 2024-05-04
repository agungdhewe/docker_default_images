## docker\_default\_images


Buat Network yang diperlukan

```plaintext
$ ./devnetwork.sh
```

Buat Volume yang akan diakses dari container

```plaintext
$ ./volume-fgtadbdata.sh
$ ./volume-fgtafsdata.sh
```

Build Image

```plaintext
$ docker compose -f webserver_8_2.yml build
$ docker compose -f mariadb_10_6.yml
```


