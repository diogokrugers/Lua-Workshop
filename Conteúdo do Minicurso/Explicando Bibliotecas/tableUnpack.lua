local numerosSorteadosMegasena = {10, 2, 40, 46, 49, 58}

local a, b, c, d, e, f = table.unpack(numerosSorteadosMegasena)

local euQuero = table.pack(a, b, c, d, e, f)

for indice, valor in ipairs(euQuero) do
    print(indice, valor)
end

