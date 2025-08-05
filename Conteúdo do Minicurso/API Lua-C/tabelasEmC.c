#include <lua.h>
#include <lauxlib.h>
#include <lualib.h>

int main(){

    lua_State *L = luaL_newstate();
    luaL_openlibs(L);

    luaL_dofile(L, "imprimeTabela.lua");

    lua_getglobal(L, "printTabela");   // adiciona a função na stack

    int numeros[5] = {10, 20, 30, 40, 50};  // serão os valores da tabela
    lua_newtable(L);    // cria nova tabela (novo elemento na stack)     

    for (int i = 0; i < 5; i++){
        //adiciona a chave depois o valor na stack
        lua_pushnumber(L, i+1);  // i começa em 0 e stack começa em 1
        lua_pushnumber(L, numeros[i]);
        lua_settable(L, -3); // adiciona os dois últimos elementos na tabela
        // depois de adicionados, esses elementos são removidos da stack
    }

    lua_call(L, 1, 0);
    lua_close(L);
    return 0;
}