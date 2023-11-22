#!/bin/bash

echo "creating directories..."

mkdir /public
mkdir /adm
mkdir /it
mkdir /comerce

echo "creating user groups..."

groupadd GRP_ADM
groupadd GRP_IT
groupadd GRP_COM

echo "creating users..."

useradd theo -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd cassio -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_COM
useradd cleo -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_COM
useradd wellington -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd luiz -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_IT
useradd marcos -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_IT
useradd iago -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_COM
useradd ana -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_COM
useradd yuri -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_IT


echo "Specifying permissions of groups..."

chown root:GRP_ADM /adm
chown root:GRP_COM /comerce
chown root:GRP_IT /it

chmod 770 /adm
chmod 770 /it
chmod 770 /comerce
chmod 777 /public

echo "End..."
