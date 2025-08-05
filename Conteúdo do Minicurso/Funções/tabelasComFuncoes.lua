local imprimirNomes = {
    printMaria = function() print("Maria"); end,
    printGabriel = function() print("Gabriel"); end
}

imprimirNomes.printMaria()  --> imprime Maria

local maiorNum = function(x,y)
    if x > y then
        return x
    else
        return y
    end
end

local minhasFuncs = {max = maiorNum}

print(minhasFuncs.max(30, 90))
--> nesse caso imprimirá 90

