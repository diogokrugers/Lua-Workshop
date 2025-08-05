local soma = function(tabela)
    local soma = 0
    for _, valor in ipairs(tabela) do
        soma = soma + valor
    end

    return soma
end

local numeros = {6, 7, 12, 25, 37, 48, 51}

print(soma(numeros))

