local minhaT = {1, 4, 9, 2, 3, 5, 8}

table.sort(minhaT, function(a, b) return a < b; end)
--[[ 
nem era necessário adicionar essa função como argumento,
já que ela realiza o comportamento padrão de quando nem
é adicionado uma função, mas assim fica fácil de entender :)
]]
for indice, valor in ipairs(minhaT) do
    print(indice, valor)
end

