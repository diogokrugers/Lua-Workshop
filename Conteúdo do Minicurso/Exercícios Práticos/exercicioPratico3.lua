local calculaArea = function(base, altura)
    return base * altura
end

io.write("Qual vai ser a base?: ")
local base = io.read()

io.write("Qual vai ser a altura?: ")
local altura = io.read()

io.write("Qual vai ser a unidade de medida?: ")
local unidadeDeMedida = io.read()

local areaDoRetangulo = calculaArea(base, altura)
print("A área do retângulo é: " .. areaDoRetangulo .. unidadeDeMedida .. "^2")

