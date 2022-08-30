#!/bin/bash

echo "Criando diretórios..."

mkdir /virtual

echo "Criando grupos de usuários..."

groupadd GRP_VIRTUAL

echo "Criando usuários..."

useradd virtual -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VIRTUAL

echo "Especificando permissões dos diretórios..."

chown root:GRP_VIRTUAL /virtual

chmod 770 /virtual

echo "Fim ..."