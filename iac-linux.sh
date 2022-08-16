#!/bin/bash

# create directories
echo "Criando diretorios...."

mkdir /publico -m 777
mkdir /adm -m 770
mkdir /ven -m 770
mkdir /sec -m 770

# create groups
echo "Criando grupos de usuários...."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

# create users
echo "Criando usuários...."

useradd carlos -c "Carlos Adm" -s /bin/bash -m -p $(opnessl passwd Senha123) -G GRP_ADM
passwd carlos -e
useradd maria -c "Maria Adm" -s /bin/bash -m -p $(opnessl passwd Senha123) -G GRP_ADM
passwd maria -e
useradd joao -c "Joao Adm" -s /bin/bash -m -p $(opnessl passwd Senha123) -G GRP_ADM
passwd joao -e

useradd debora -c "Debora Vendas" -s /bin/bash -m -p $(opnessl passwd Senha123) -G GRP_VEN
passwd debora -e
useradd sebastiana -c "Sebastiana Vendas" -s /bin/bash -m -p $(opnessl passwd Senha123) -G GRP_VEN
passwd sebastiana -e
useradd roberto -c "Roberto Vendas" -s /bin/bash -m -p $(opnessl passwd Senha123) -G GRP_VEN
passwd roberto -e

useradd josefina -c "Josefina Sec" -s /bin/bash -m -p $(opnessl passwd Senha123) -G GRP_VEN
passwd josefina -e
useradd amanda -c "Amanda Sec" -s /bin/bash -m -p $(opnessl passwd Senha123) -G GRP_VEN
passwd amanda -e
useradd rogerio -c "Rogerio Sec" -s /bin/bash -m -p $(opnessl passwd Senha123) -G GRP_VEN
passwd rogerio -e

echo "Especificando permissões de diretórios ..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo "Execução finalizada...."