local function f(g)
    return g()
end

local function hello()
    print("Olá!!!")
    local x = 10
    return x
end

local oi = f(hello)
print(oi)