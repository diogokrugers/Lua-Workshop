local numeros = {10, 20, 30}

local mt = {
    __call = function(tabela, parametro)
        for indice, valor in ipairs(tabela) do
            tabela[indice] = tabela[indice] * parametro
        end
    end
}

setmetatable(numeros, mt)
numeros(5) --> multiplica todos os elementos por 5

