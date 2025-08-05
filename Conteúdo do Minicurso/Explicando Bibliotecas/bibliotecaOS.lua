---@diagnostic disable: undefined-global
print( os.time() )              --> retorna número de segundos desde a epoch
print( os.clock() )             --> retorna número de segundos desde o começo da execução do programa
print( os.date() )              --> retorna a data e a hora formatados bonitinhos
print( os.difftime(t1, t2) )    --> retorna diferença t1 - t2, onde esses são valores de os.time()

os.remove("arquivo")            --> remove esse arquivo e retorna true ou false se deu certo ou não
os.rename("arquivo", "nome")    --> renomeia o arquivo do nome antigo pro novo, retorno true ou false
print( os.tmpname() )           --> retorna com uma string do nome de um arquivo de uso temporário

os.setlocale(nil)               --> serve para alterar ou consultar as configurações regionais (locale) do ambiente. Padrão é C
os.execute()                    --> O que for passado como argumento será rodado como comando no terminal.
os.exit()                       --> Fecha o programa.
print( os.getenv("USERNAME") )  --> Retorna o caminho para uma variável de ambiente ou false caso não dê.


