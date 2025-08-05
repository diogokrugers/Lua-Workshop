local informacoes = {Altura = "1.61cm", Peso = "71kg", Idade = "25"}
local OUTRAS_infos = {Profissao = "Desenvolvedora", Cidade = "Bagé"}

local mt = {__index = OUTRAS_infos}

print(informacoes.Altura, informacoes.Peso, informacoes.Idade) --> funciona normal

print(informacoes.Profissao)    --> retorna nil, não tem como achar ainda

setmetatable(informacoes, mt)

print(informacoes.Profissao)    --> agora funciona pois usa __index pra achar

