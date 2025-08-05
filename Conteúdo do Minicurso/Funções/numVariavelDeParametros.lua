local calculaMedia = function(...)
    local numerador, denominador = 0, 0

    for nvalor, valor in ipairs{...} do
        denominador = denominador + 1
        numerador = numerador + valor
    end

    return numerador / denominador
end

print(calculaMedia(5, 6, 7, 8, 9, 10))

