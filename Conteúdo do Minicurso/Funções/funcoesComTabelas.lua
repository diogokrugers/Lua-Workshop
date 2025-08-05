local amigos = {"Julia", "Matheus", "Leonel", "Olga"}
local suasIdades = {15, 12, 40, 65}

local infoPessoas = function(nomes, idades)
    for i = 1, #nomes do
        print("-------------")
        print("Nome: " .. nomes[i])
        print("Idade: " .. idades[i])
    end
end

infoPessoas(amigos, suasIdades)

