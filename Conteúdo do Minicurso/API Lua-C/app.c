#include <stdio.h>
#include <stdbool.h>

#include <lua.h>
#include <lualib.h>
#include <lauxlib.h>

// PARA COMPILAR
// gcc nomeDoSeuPrograma.c -o nomeDoSeuPrograma.exe -I"endereço para sua pasta include de Lua" -L"endereço pra onde fica suas bibliotecas ('dll', 'so') (geralmente fica em bin)" -l"nome da sua biblioteca (geralmente é 'lua54')"

int main(){

    lua_State *L = luaL_newstate(); //inicializa um state de lua, uma stack Lua-C
    luaL_openlibs(L);               // inicializa as bibliotecas padrão de lua

    luaL_dofile(L, "bomdia.lua");   // abre o arquivo

    lua_getglobal(L, "x");
    lua_getglobal(L, "y");  // Adiciona as variáveis globais declaradas em Lua na stack Lua-C.
    lua_getglobal(L, "z");  // Elas vão da (Stack Lua) -> (Stack Lua-C)

    int x = lua_tonumber(L, 1);     
    const char* y = lua_tostring(L, 2);     // atribui os valores da stack Lua-C para variáveis em C
    bool z = lua_toboolean(L, 3);

    printf("x = %d\ny = %s\nz = %d", x, y, z);

    lua_close(L);   // finaliza e libera esse state de Lua e sua stack

    return 0;
}


