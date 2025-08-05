local numeros = {15, 30, 45, 60}
local outros_numeros = {200, 300, 400, 500}
local numeroAleatorio = 1337

local mt = {
    __add = function(tabela1, segundo_operando)
        local tab_result = {}

        if type(segundo_operando) == 'table' then
            for indice, valor in ipairs(tabela1) do
                tab_result[indice] = tabela1[indice] + segundo_operando[indice]
            end

            return tab_result
        elseif type(segundo_operando) == 'number' then
            for indice, valor in ipairs(tabela1) do
                tab_result[indice] = tabela1[indice] + segundo_operando
            end

            return tab_result
        end
    end
}
setmetatable(numeros, mt)

local soma = numeros + outros_numeros
local tabelaDiferentinha = numeros + numeroAleatorio

for indice, valor in ipairs(soma) do
    print(indice, valor)
end


for indice, valor in ipairs(tabelaDiferentinha) do
    print(indice, valor)
end
