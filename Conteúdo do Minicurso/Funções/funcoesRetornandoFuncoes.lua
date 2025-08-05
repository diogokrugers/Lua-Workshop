local quero = function(string)
    if string == "somar" then
        return function(x, y)
            return x + y
        end
    elseif string == "multiplicar" then
        return function(x, y)
            return x * y
        end
    end
end

local minhaFunc = quero("somar")
print(minhaFunc(1, 9))  --> retorna 10

