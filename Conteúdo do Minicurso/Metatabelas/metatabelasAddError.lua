local numeros = {15, 30, 45, 60}
local outros_numeros = {200, 300, 400, 500}

local mt = {
    __add = error("Quero que nenhuma tabela seja somada não.")
}
setmetatable(numeros, mt)

local soma = numeros + outros_numeros 
--[[ 
    como 'numeros' tem 'mt' como metatable
    e essa metatable tem um metamétodo __add
    definido, vai chamar ele pra definir o
    comportamento dessa soma.
]]

