#####################################################
# ECM253 – Linguagens Formais, Autômatos e Compiladores - Trabalho 02
# Exercício 3

##########################################################
##  Nome: Fernando Laiser                               ##
##  Nome: Guilherme Cury Galli                          ## 
##  Nome: Igor Eiki Ferreira Kubota                     ##
##########################################################

#Abre o arquivo do automato como um dicionario
with open('m.dfa') as dfa_file:
    dfa_data = dfa_file.read()  

dfa = eval(dfa_data)
# Para conferir o conteúdo
print(dfa)
print("\n")

# Para conferir as chaves
x = dfa.keys()
print(x)
print("\n")


# Função que simula o automato
def simular_dfa(dfa,entrada1):
    estado = dfa['initial_state']
    aceitar = False
    entrada = list(entrada1)

    # Remove o primeiro valor da entrada
    while len(entrada)>0:
        c = entrada.pop(0)
          
        # Verifica se c está nos parametros sigma
        if c not in dfa['sigma']:
            print("O simbolo", c, "nao pertence ao automato")
            entrada.insert(0,c)
            break
        
        # Verifica se o estado atual se encontra dos estados do automato
        if estado not in dfa['states']:
            print("O estado", estado, "nao pertence ao conjunto de estados do automato")
            break

        # Verifica se é possivel transicionar o estado
        try:
            print([estado,c], end = " ")
            estado = dfa['delta'][(estado,c)]
            print("->" , estado)
            
        except:
            print("Nao foi possivel realizar a transicao do estado", estado, " com o valor", c)
            break
    
    # Verifica se chegou no estado final e a entrada está vazia
    if estado in dfa['final_states'] and len(entrada) == 0:
        aceitar = True

    if aceitar:
        print("A Cadeia", entrada1, "foi aceita pelo automato!")
    else:
        print("A Cadeia", entrada1, "foi rejeitada pelo automato!")


####    Main    ####

#   Mantém a função Simular_dfa em um loop
while True:

    UserEntry = str(input("Digite a cadeia desejada: "))
    simular_dfa(dfa,UserEntry)

    # Verifica se o usuário deseja fechar o programa e fecha caso sim
    if UserEntry == "^D":
        print("Programa finalizado pelo usuario")
        break



