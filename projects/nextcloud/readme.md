


#Sauvegardes

Les dumps quotidiens de la base se trouve dans le persistent volume de mariadb.

On peut y accéder directement sur togodo

```
/mnt/DATA/oc/pv/mariadb$ ls -al
total 271320
drwxrwxrwx   6 root       root     4096 févr.  9 01:00 .
drwxr-xr-x 103 root       root     4096 juil. 10  2018 ..
-rwxrwxrwx   1 1000080000 root    16384 janv. 12 11:56 aria_log.00000001
-rwxrwxrwx   1 1000080000 root       52 janv. 12 11:56 aria_log_control
-rw-r--r--   1 1000080000 root  4343826 févr.  4 01:00 dump-20190204-00-00-17.sql
-rw-r--r--   1 1000080000 root  4343826 févr.  5 01:00 dump-20190205-00-00-21.sql
-rw-r--r--   1 1000080000 root  4343826 févr.  6 01:00 dump-20190206-00-00-12.sql
-rw-r--r--   1 1000080000 root  4343826 févr.  7 01:00 dump-20190207-00-00-35.sql
-rw-r--r--   1 1000080000 root  4343826 févr.  8 01:00 dump-20190208-00-00-38.sql
-rw-r--r--   1 1000080000 root  4343826 févr.  9 01:00 dump-20190209-00-00-35.sql
-rwxrwxrwx   1 1000080000 root     8440 janv. 12 11:56 ib_buffer_pool
-rwxrwxrwx   1 1000080000 root 79691776 janv. 22 01:00 ibdata1
-rwxrwxrwx   1 1000080000 root 79691776 janv. 22 01:00 ib_logfile0
-rwxrwxrwx   1 1000080000 root 79691776 janv.  5 18:00 ib_logfile1
-rwxrwxrwx   1 1000080000 root 12582912 janv. 12 11:56 ibtmp1
-rwxrwxrwx   1 1000080000 root        2 janv. 12 11:56 mariadb-1-s4s29.pid
-rwxrwxrwx   1 1000080000 root        0 juin  11  2018 multi-master.info
drwxrwxrwx   2 1000080000 root     4096 juin  11  2018 mysql
-rwxrwxrwx   1 1000080000 root       14 juin  11  2018 mysql_upgrade_info
drwxrwxrwx   2 1000080000 root    12288 janv.  2 20:17 nextcloud
drwxrwxrwx   2 1000080000 root     4096 juin  11  2018 performance_schema
-rwxrwxrwx   1 1000080000 root    24576 janv. 12 11:56 tc.log
drwxrwxrwx   2 1000080000 root     4096 juin  11  2018 test
```

#logs

Envoi des logs nginx vers graylog.
https://marketplace.graylog.org/addons/572ff823-62cc-468e-af17-300bcfd9932d

