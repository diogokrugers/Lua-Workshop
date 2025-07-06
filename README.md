# Lua-Workshop
Arquivos necessários para o minicurso de Lua que ministrarei para a SACOMP 2025, na UFPel.

## Instalação (build) de Lua no Windows
- Essas instruções assumem que você já tenha o compilador GCC via [MinGW](https://sourceforge.net/projects/mingw) instalado e funcionando no seu computador. Clique [aqui](https://www.youtube.com/watch?v=rUmfHM1JwLc) para um bom tutorial de como instalar MinGW. <br>
- Para uma instalação mais simples e que não necessita do MinGW, siga a seção mais abaixo que irá lhe guiar em como instalar Lua sem necessitar de passar pelo processo de compilá-la e fazer a build. <br>
1. Baixe o [código-fonte](lua-5.4.8). <br>
2. Baixe o [script] para buildar(build.cmd) Lua. <br>
3. Coloque a [pasta do código-fonte](lua-5.4.8) e o [script](build.cmd) na mesma pasta. <br>
4. Execute o script [build.cmd](build.cmd). <br>
5. O [script](build.cmd) irá gerar uma nova pasta 'lua'. Coloque ela onde desejar. <br>
6. Nesse novo local, entre na pasta 'lua', vá em /bin e copie o endereço da pasta. (No caso de colocar em C:, ficará assim: C:\lua\bin) <br>
7. Abra a aba de pesquisa da barra de tarefas e pesquise 'Editar as variáveis de ambiente do sistema'. <br>
8. Vá em 'Variáveis de ambiente', logo abaixo. <br>
9. Na aba 'Variáveis do sistema', procure por 'Path', clique nele e vá em 'Editar'. <br>
10. Clique em 'Novo', e no espaço que abrir, cole o caminho do endereço em que copiou onde ficou 'lua/bin'. OK. <br>
11. Abra o Prompt de Comando e execute o comando 'lua', se aparecer a sua versão de Lua e um '>' na linha seguinte, Lua está devidamente instalada. <br>

## Instalação (build) de Lua no Linux/Unix
- Pode pular as instruções e executar apenas esse comando no terminal:<br>curl -sSL https://raw.githubusercontent.com/diogokrugers/Lua-Workshop/main/install.sh | bash <br>
1. Abra o seu terminal e execute os seguintes comandos: <br>
curl -L -R -O https://www.lua.org/ftp/lua-5.4.8.tar.gz <br>
tar zxf lua-5.4.8.tar.gz <br>
cd lua-5.4.8 <br> 
sudo make all install <br>
- Opcional <br>
cd .. <br>
rm -rf lua-5.4.8 lua-5.4.8.tar.gz <br>

## Instalação de Lua no Windows (Build pronta, binários incluídos)
- Essa é a versão mais simples, já que não requer o processo de compilação e build. Porém, a versão de Lua instalada será a 5.4.2. <br>
1. Baixe a pasta [lua](lua). <br>
2. Guarde essa pasta no local onde deseja e copie o endereço da pasta. (No caso de colocar em C:, ficará assim: C:\lua) <br>
3. Abra a aba de pesquisa da barra de tarefas e pesquise 'Editar as variáveis de ambiente do sistema'. <br>
4. Vá em 'Variáveis de ambiente', logo abaixo. <br>
5. Na aba 'Variáveis do sistema', procure por 'Path', clique nele e vá em 'Editar'. <br>
6. Clique em 'Novo', e no espaço que abrir, cole o caminho do endereço em que copiou onde ficou a pasta 'lua'. OK. <br>
7. Abra o Prompt de Comando e execute o comando 'lua', se aparecer a sua versão de Lua e um '>' na linha seguinte, Lua está devidamente instalada. <br>


## Créditos
Este projeto contém o código-fonte e os binários compilados do interpretador [Lua](https://www.lua.org/), distribuído sob a licença MIT. <br>
Lua é um projeto da PUC-Rio. Veja mais em [www.lua.org](https://www.lua.org). <br> 
<br>
A licença original pode ser encontrada [aqui](https://www.lua.org/license.html). <br>

