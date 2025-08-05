local primeira = {10, 20, 30, 40, 50}

local segunda = {}

table.move(primeira, 1, #primeira, 1, segunda)

for indice, valor in ipairs(segunda) do
    print(indice, valor)
end

