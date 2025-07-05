#!/bin/bash
set -e

# Executar diretamente: curl -sSL https://raw.githubusercontent.com/diogokrugers/Lua-Workshop/main/install.sh | bash

echo "Baixando e instalando Lua 5.4.8..."

# Download, build e instalação:
curl -L -R -O https://www.lua.org/ftp/lua-5.4.8.tar.gz
tar zxf lua-5.4.8.tar.gz
cd lua-5.4.8
sudo make all install

# Opcional:
cd ..
rm -rf lua-5.4.8 lua-5.4.8.tar.gz

echo "Lua instalado com sucesso!"