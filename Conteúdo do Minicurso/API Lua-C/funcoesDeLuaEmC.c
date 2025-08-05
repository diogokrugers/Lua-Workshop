#include <lua.h>
#include <lauxlib.h>
#include <lualib.h>

int main(){

    lua_State *L = luaL_newstate();
    luaL_openlibs(L);

    luaL_dofile(L, "printXvezes.lua");

    lua_getglobal(L, "printMsg");   // adiciona a função na stack

    lua_pushstring(L, "Vou colocar essa string na stack Lua-C!");   // adiciona essa string na stack Lua-C
    lua_pushnumber(L, 5);           // adiciona esse número na stack

    lua_call(L, 2, 0);  // 2 significa que a função tem 2 argumentos e 0 significa que a função tem 0 valores a serem retornados
    /*
    como passamos 2 parâmetros para a chamada de função, ele irá na posição -2 da stack (onde começam os parâmetros que adicionamos), então se 
    pegará o valor anterior a esse na stack (no nosso caso -3) e esse valor será a função a ser chamada com os parâmetros na sequência da stack.
    */
    // outra alternativa é usar pcall, que é feito para trabalhar quando existem erros --> (lua_pcall(L, 2, 0, 0) != 0) deu erro!
    // os parâmetros são removidos da stack após o fim da execução da função, não dá pra usar de novo

    lua_close(L);
    return 0;
}
