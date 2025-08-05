--NÃO copie a linha abaixo no seu código caso for modificá-lo!
---@diagnostic disable: duplicate-set-field

Conta_Bancaria = {
    dono = "",
    idade = 0,
    moradia = "",
    saldo = 0,
}

Conta_Bancaria.__index = Conta_Bancaria

Conta_Bancaria.__newindex = function(objeto, atributo, valor)
    if Conta_Bancaria[atributo] == nil then --> esse atributo existe na tabela classe? não existe=erro, existe=atribui normalmente
        error("Não pode adicionar mais atributos em um objeto da classe Conta_Bancaria!", 2)
    else
        rawset(objeto, atributo, valor)
        --> deve-se usar rawset pois atribuição comum (objeto[atributo] = valor) causa recursão infinita! (fica sempre chamando o __newindex)
        --> rawset faz a mesma coisa que a atribuição comum, ele serve apenas nessas situações como um "escape" (ele não usa o __newindex, faz direto)
    end
end

Conta_Bancaria.__tostring = function(obj)   --> print() sempre chama tostring previamente por padrão, uma forma de formatar o print()
    return  "-------------BANCO--------------\n" ..
            "Dono\t= " .. obj.dono ..
            "\nIdade\t= " .. obj.idade ..
            "\nMoradia\t= " .. obj.moradia ..
            "\nSaldo\t= " .. obj.saldo ..
            "\n--------------------------------"
end

Conta_Bancaria.new = function(dono, idade, moradia)
    local objeto = setmetatable({}, Conta_Bancaria)

    objeto.dono     = dono
    objeto.idade    = idade
    objeto.moradia  = moradia

    return objeto
end

function Conta_Bancaria:depositar(quantia)
    self.saldo = self.saldo + quantia
    print("Depósito de " .. quantia .. " realizado, tens agora " .. self.saldo .. " reais!")
end

function Conta_Bancaria:retirar(quantia)
    if self.saldo < quantia then
        print("Você só tem " .. self.saldo .. " de saldo! Não dá pra retirar " .. quantia .. " reais.")
    else
        self.saldo = self.saldo - quantia
        print("Você retirou " .. quantia .. " reais, tens agora " .. self.saldo .. " reais!")
    end
end

----------> main <--------------------------------------------------------------------------------

local conta_do_jairo = Conta_Bancaria.new("Jairo", 49, "Rua Gomes Carneiro, 1")

conta_do_jairo:retirar(1334)
conta_do_jairo:depositar(567)
conta_do_jairo:retirar(412)

print(conta_do_jairo)

