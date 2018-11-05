 #!/bin/bash

curl -u remi:DSfJ004HAks0OOLrKDwt \
  http://biconou.freeboxos.fr:4646/remote.php/dav/addressbooks/users/remi/contacts/?export > /mnt/DATA/REMI/SAUVEGARDE/contacts.vcf

curl -u remi:DSfJ004HAks0OOLrKDwt \
  http://biconou.freeboxos.fr:4646/remote.php/dav/calendars/remi/personal?export > /mnt/DATA/REMI/SAUVEGARDE/personal.ics

curl -u remi:DSfJ004HAks0OOLrKDwt \
  http://biconou.freeboxos.fr:4646/remote.php/dav/calendars/remi/ides-sorties?export > /mnt/DATA/REMI/SAUVEGARDE/ides-sorties.ics

curl -u remi:DSfJ004HAks0OOLrKDwt \
  http://biconou.freeboxos.fr:4646/remote.php/dav/calendars/remi/pour-information?export > /mnt/DATA/REMI/SAUVEGARDE/pour-information.ics