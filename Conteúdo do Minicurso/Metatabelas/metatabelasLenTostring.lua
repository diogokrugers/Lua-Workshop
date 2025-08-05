local coisas = {"Sol", "Lua", "Marte", "Saturno"}
local mt = {
    __len = function(tabela)
        local quantasLetras = 0
        for indice, valor in ipairs(tabela) do
            quantasLetras = quantasLetras + #valor
        end
        return quantasLetras
    end,
    __tostring = function(tabela)
        return "O total de letras de cada elemento da sua tabela somado é " .. #tabela
    end
}
setmetatable(coisas, mt)
print(coisas)

