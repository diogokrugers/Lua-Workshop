local criarContador = function()
    local count = 0  --> isso é um upvalue para a função retornada
    return function()
        count = count + 1
        return count
    end
end

local c = criarContador()
print(c())  --> 1
print(c())  --> 2
print(c())  --> 3

