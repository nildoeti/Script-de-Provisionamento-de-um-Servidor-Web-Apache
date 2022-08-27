#!/bin/bash

echo "Atualizando o servidor..."
apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y


echo "Baixando e copiando os arquivos da aplicação..."

cd /tmp
wget https://github.com/nildoeti/arcadascriancas/archive/refs/tags/arca-das-crian%C3%A7as.zip
unzip arca-das-criancas.zip
cd arca-das-criancas
cp -R * /var/www/html/
