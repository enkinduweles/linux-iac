#!/bin/bash

echo "Creating folders"
mkdir /public
mkdir /adm
mkdir /ven
mkdir /sec

echo "Changing permissions of folders"
chmod 777 /public
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "Adding groups"
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Changing group of folders"
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo "Adding users"
useradd -m -s /bin/bash -G GRP_ADM joao
useradd -m -s /bin/bash -G GRP_ADM carlos
useradd -m -s /bin/bash -G GRP_ADM maria
useradd -m -s /bin/bash -G GRP_VEN debora
useradd -m -s /bin/bash -G GRP_VEN sebastiana
useradd -m -s /bin/bash -G GRP_VEN roberto
useradd -m -s /bin/bash -G GRP_SEC josefina
useradd -m -s /bin/bash -G GRP_SEC amanda
useradd -m -s /bin/bash -G GRP_SEC rogerio
