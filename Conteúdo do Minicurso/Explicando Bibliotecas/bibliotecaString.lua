print( string.len("Onças e Leões") )        --> Retorna o número de bytes/caracteres da string passada.
                                            --> (inclusive Unicode contam como 2)
print( string.reverse("Ao contrário!") )    --> Retorna a string passada de trás pra frente.
print( string.format )                      --> função para formatar strings como o printf em C 
                                            --> (usada bem com a função print em Lua)
print( string.byte('ABC', 1) )              --> Retorna o valores ASCII do caractere no índice 
                                            --> especificado da string passada (nesse caso 65)
print( string.char(65) )                    --> Retorna o caractere que possui esse valor ASCII (nesse caso 'A')
print( string.upper("quero gritar!") )      --> Retorna uma string com todas as letras da string passada em maiúsculo
print( string.lower("FALA BAIXO...") )      --> Retorna uma string com todas as letras da string passada em minúsculo
print( string.rep("PET", 5, "repete") )     --> Retorna uma string repetindo o número de vezes dado pelo 2º arg. 
                                            --> e separado pela string do 3º arg.

print( string.find('Anglo', 'glo', 1))      --> 1º argumento = string original, 2º argumento = substring 
                                            --> a ser procurada na string original. 3º argumento = em qual 
                                            --> índice começar a procurar. retorna o índice onde começa a 
                                            --> substring na string original e o índice onde a substring 
                                            --> acaba. retorna false caso não ache. (nesse caso 3 e 5) 

print( string.match("Anglo", "glo", 1) )    --> faz a mesma coisa que string.find, mas só retorna a substring 
                                            --> caso ela existir na string original

print( string.gsub("bolinha!", "o", "a") )  --> 1º argumento = string original, 2º argumento = substring a ser 
                                            --> substituída, 3º argumento = substring a ser colocada na substring 
                                            --> que vai ser substituída, retorna a string modificada (nesse caso, 
                                            --> balinha) e também a quantidade de substrings (2º argumento) que 
                                            --> ele achou na string original

print( string.sub("Axolote", 4, 4) )        --> Dada a string passada, retorna o caractere do índice especificado no
                                            --> 2º argumento até o índice especificado no 3º argumento. Pode ser 
                                            --> utilizada como uma alternativa para indexação de strings, já que isso 
                                            --> não existe em Lua!

