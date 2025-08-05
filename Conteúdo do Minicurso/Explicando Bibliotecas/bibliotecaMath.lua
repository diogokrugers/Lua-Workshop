print( math.pi )                --> não é função! é só o número de pi 3.141592...
print( math.sqrt(9) )           --> calcula raíz quadrada (nesse caso é 3)
print( math.abs(-15) )          --> valor absoluto (distância de 0) (nesse caso é 15)
print( math.random() )          --> um número aleatório entre 0-1 (depende da seed passada)
print( math.huge )              --> maior valor numérico da linguagem, serve como infinito
print( math.max(3, 9, 15, 20))  --> retorna o argumento de maior valor (nesse caso 20)
print( math.min(3, 9, 15, 20))  --> retorna o argumento de menor valor (nesse caso 3)
print( math.log(8, 2))          --> retorna o log do 1º argumento com o 2º como base (nesse caso 3)
print( math.type(3.14) )        --> retorna o tipo do argumento: "integer", "float" ou false caso falhe.
print( math.cos(math.pi))       --> retorna em radianos o cosseno do que lhe for passado como argumento (nesse caso -1)
print( math.floor(4.6) )        --> retorna apenas o valor inteiro do argumento passado (nesse caso 4)
print( math.ceil(4.2) )         --> retorna apenas o valor inteiro +1 do argumento passado (nesse caso 5)
print( math.modf(6.5) )         --> retorna o valor inteiro e o decimal do argumento passado (nesse caso 6 e 0.5)

-- existem outras funções e valores, mas essas são as principais!