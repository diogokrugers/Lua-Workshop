--NÃO copie a linha abaixo no seu código caso for modificá-lo!
---@diagnostic disable: duplicate-set-field

Conta_Bancaria = {
    dono    = "",
    idade   = 0,
    moradia = "",
    saldo   = 0,
}

local tipos_esperados = {
    dono    = "string",
    idade   = "number", 
    moradia = "string",
    saldo   = "number"
}

Conta_Bancaria.__index = Conta_Bancaria

Conta_Bancaria.__newindex = function(objeto, atributo, valor)
    if Conta_Bancaria[atributo] == nil then
            error("Não pode adicionar mais atributos em um objeto da classe Conta_Bancaria!", 2)
    else
        local tipo_esperado = tipos_esperados[atributo]
        local tipo_atual = type(valor)
        if tipo_atual ~= tipo_esperado then
            error("Tipo inválido para '" .. atributo .. "'. Esperado: " .. tipo_esperado .. ", recebido: " .. tipo_atual, 2)
        end
        if atributo == "idade" and valor < 0 then
            error("Idade não pode ser negativa!", 2)
        end
        if atributo == "saldo" and valor < 0 then
            error("Saldo não pode ser negativo!", 2)
        end
        rawset(objeto, atributo, valor)
    end
end

Conta_Bancaria.__tostring = function(obj)   --> print() sempre chama tostring previamente por padrão, uma forma de formatar o print()
    return  "------------BANCO-------------\n" ..
            "Dono\t= " .. obj.dono .. 
            "\nIdade\t= " .. obj.idade .. 
            "\nMoradia\t= " .. obj.moradia .. 
            "\nSaldo\t= " .. obj.saldo
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
    print("Depósito de " .. quantia .. " realizado!")
end

function Conta_Bancaria:retirar(quantia)
    if self.saldo < quantia then
        print("Você nem tem saldo o suficiente retirar!")
    else
        self.saldo = self.saldo - quantia
        print("Você retirou " .. quantia .. " reais, tens agora " .. self.saldo .. " reais!")
    end
end

local conta_do_jairo = Conta_Bancaria.new("Jairo", 49, "Rua Gomes Carneiro, 1")

conta_do_jairo:retirar(1334)
conta_do_jairo:depositar(567)
conta_do_jairo:retirar(412)

print(conta_do_jairo)