        @echo off
        :: ========================
        :: file build.cmd
        :: ========================
        setlocal
        :: Você talvez tenha que atualizar essa versão
        :: para combinar com a sua versão baixada.
        set lua_version=5.4.8

        set work_dir=%~dp0
        :: Remove a barra invertida final para melhorar
        :: a legibilidade nas etapas seguintes.
        set work_dir=%work_dir:~0,-1%
        set lua_install_dir=%work_dir%\lua
        set compiler_bin_dir=%work_dir%\mingw64\bin
        set lua_build_dir=%work_dir%\lua-%lua_version%
        set path=%compiler_bin_dir%;%path%

        cd /D %lua_build_dir%
        mingw32-make PLAT=mingw

        echo.
        echo **** COMPILAÇÃO ENCERRADA ****
        echo.
        echo **** CONSTRUINDO DISTRIBUIÇÃO BINÁRIA ****
        echo.

        :: Cria uma instalação "binária" limpa
        mkdir %lua_install_dir%
        mkdir %lua_install_dir%\doc
        mkdir %lua_install_dir%\bin
        mkdir %lua_install_dir%\include

        copy %lua_build_dir%\doc\*.* %lua_install_dir%\doc\*.*
        copy %lua_build_dir%\src\*.exe %lua_install_dir%\bin\*.*
        copy %lua_build_dir%\src\*.dll %lua_install_dir%\bin\*.*
        copy %lua_build_dir%\src\luaconf.h %lua_install_dir%\include\*.*
        copy %lua_build_dir%\src\lua.h %lua_install_dir%\include\*.*
        copy %lua_build_dir%\src\lualib.h %lua_install_dir%\include\*.*
        copy %lua_build_dir%\src\lauxlib.h %lua_install_dir%\include\*.*
        copy %lua_build_dir%\src\lua.hpp %lua_install_dir%\include\*.*

        echo.
        echo **** DISTRIBUIÇÃO BINÁRIA CONSTRUÍDA ****
        echo.

        %lua_install_dir%\bin\lua.exe -e"print [[Olá!]];print[[Lua está funcionando perfeitamente!!!]]"

        echo.

        pause