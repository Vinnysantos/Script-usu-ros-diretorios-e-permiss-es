#!/bin/bash

echo "criando pastas..."
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec
echo "pasta de departamento criadas"

echo "criando grupos..."
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC
echo "grupos criados"

echo "Criando usuários ADM..."
useradd carlos -c "Carlos Castro" -s /bin/bash -m -p $(openssl passwd -1 $123) -G GRP_ADM
passwd carlos -e

useradd maria -c "Maria Mello" -s /bin/bash -m -p $(openssl passwd -1 $123) -G GRP_ADM
passwd maria -e

useradd joao -c "Joao Jesus" -s /bin/bash -m -p $(openssl passwd -1 $123) -G GRP_ADM
passwd carlos -e

echo "Criando usuários VEN..."
useradd debora -c "Debora Dantas" -s /bin/bash -m -p $(openssl passwd -1 $123) -G GRP_VEN
passwd debora -e

useradd sebastiana -c "Sebastiana Santos" -s /bin/bash -m -p $(openssl passwd -1 $123) -G GRP_VEN
passwd sebastiana -e

useradd roberto -c "Roberto Risso" -s /bin/bash -m -p $(openssl passwd -1 $123) -G GRP_VEN
passwd roberto -e

echo "Criando usuários SEC..."
useradd josefina -c "Josefina Jacob" -s /bin/bash -m -p $(openssl passwd -1 $123) -G GRP_SEC
passwd josefina -e

useradd amanda -c "Amanda Assis" -s /bin/bash -m -p $(openssl passwd -1 $123) -G GRP_SEC
passwd Amanda  -e

useradd rogerio -c "Rogerio Ramalho" -s /bin/bash -m -p $(openssl passwd -1 $123) -G GRP_SEC
passwd rogerio -e

echo "Usuários criados"

echo "Alterando Owner e grupo das pastas"
cd /
chown root:GRP_ADM adm
chown root:GRP_VEN ven
chown root:GRP_SEC sec

echo "Alterando permissões"
chmod 777 publico
chmod 770 adm
chmod 770 ven
chmod 770 sec
