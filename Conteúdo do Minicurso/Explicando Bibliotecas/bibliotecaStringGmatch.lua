local nome = "Tenho muitos amigos, e esses amigos me acompanham na vida."
local ocorrencias_da_substring = 0

for substring in string.gmatch(nome, "amigos") do   --> captura todas as instâncias da substring
    ocorrencias_da_substring = ocorrencias_da_substring + 1
    print(substring)
end

print(ocorrencias_da_substring)

----------/----------/----------/----------/----------/----------/----------/

local texto = "Vamos brincar de esconde-esconde no bosque?"

for palavra in string.gmatch(texto, "%a+") do   --> captura todas as palavras
    print(palavra)
end

----------/----------/----------/----------/----------/----------/----------/

local idades = "Idades: 15, 42 e 7"

for num in string.gmatch(idades, "%d+") do      --> captura todos os números
    print(num)
end

