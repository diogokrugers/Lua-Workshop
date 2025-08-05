local round = function(numero)
    local inteiro, decimal = math.modf(numero)

    if decimal == 0 then print("Esse numero é inteiro!") end

    if decimal >= 0.5 then
        return inteiro + 1
    else
        return inteiro
    end

end

io.write("Que número você quer arredondar?: ")
local numero = io.read()

local numeroArredondado = round(numero)

print(numeroArredondado)