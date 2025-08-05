local numeros = {15, 30, 45, 60}
local outros_numeros = {200, 300, 400, 500}

local mt = {
    __add = function(tabela1, tabela2)
        local tab_result = {}
        for indice, valor in ipairs(tabela1) do
            tab_result[indice] = tabela1[indice] + tabela2[indice]
        end
        return tab_result
    end
}
setmetatable(numeros, mt)

local soma = numeros + outros_numeros

for indice, valor in ipairs(soma) do
    print(indice, valor)
end

