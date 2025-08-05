local prototipoPessoa = {Nome = "", Idade = 0, Profissao = "", NasceuEm = ""}
local gabriel = {}
local mt = {
    __newindex = function(tabela, indice, valor)
        if prototipoPessoa[indice] == nil then
            error("Isso não existe no protótipo de uma pessoa!")
        else
            rawset(tabela, indice, valor)
        end
    end
}
setmetatable(gabriel, mt)

gabriel.Nome = "Gabriel"  --> Funciona!
gabriel.PodeSairVoandoDoNada = true --> NÃO FUNCIONA!

