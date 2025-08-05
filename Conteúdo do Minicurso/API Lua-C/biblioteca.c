#include <stdio.h>
#include <lua.h>
#include <lauxlib.h>
#include <lualib.h>

int olaMundo(lua_State *L){
    lua_pushstring(L, "Olá, mundo!");
    return 1; // estamos retornando a string
}

int printOi(lua_State *L){
    printf("Oi.");
    return 0; // não estamos retornando nada
}

// isso vai virar uma tabela em Lua com as funções
// mapeia chaves (nome da função em Lua) -> valores (funções de C)
static const struct luaL_Reg funcoes[] = {
    {"olaMundo", olaMundo},
    {"printOi", printOi},
    {NULL, NULL}    // é o "nil", a tabela acaba aqui -> necessário
};

// luaopen_"Nome" deve ter o nome MESMO da biblioteca
// cria uma tabela em lua com a "tabela" (array de structs) funcoes, que tem as funções
int luaopen_Minicurso(lua_State *L){
    luaL_newlib(L, funcoes);
    return 1;
}

