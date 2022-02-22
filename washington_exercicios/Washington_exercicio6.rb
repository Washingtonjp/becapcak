#Estamos vivendo uma pandemia e o governador pediu um sistema para indicar qual a cor da fase pandêmica em que está o Estado.
#A cor da fase pandêmica é definida baseada em três valores:
#1) A taxa de vacinação da população.
#2) O fator de transmissão do vírus.
#3) A taxa de ocupação dos leitos de UTI.
#As regras para definição de cada fase são as seguintes:
#- FASE AZUL: quando que a taxa de vacinação estiver acima de 80% (percentual de imunização coletiva)
#- FASE VERDE: quando a taxa de ocupação de leitos estiver abaixo ou igual a 50%, porém com fator de transmissão menor que 1.
#- FASE AMARELA: quando a taxa de ocupação de leitos estiver acima de 50%, porém com fator de transmissão menor que 1.
#- FASE LARANJA: quando a taxa de ocupação de leitos estiver acima de 65%, porém com fator de transmissão menor que 1.
#- FASE VERMELHA: quando a taxa de ocupação de leitos estiver acima de 80% ou quando o fator de transmissão for maior ou igual a 1.
#- FASE ROXA: quando a taxa de ocupação de leitos estiver acima de 90%.
#Para atender o sistema, defina uma função chamada 'fase_pandemica' que deve receber três parâmetros (taxa de vacinação, fator de transmissão e taxa de ocupação de leitos) e baseado nas regras descritas acima, retornar uma string com o nome da cor da fase da pandemia.
#Ex.: ao executar o seguinte comando:
#fase_pandemica(0.1, 0.7, 0.5)
#Deve retornar a string "VERDE".
#Obs.: validar os parâmetros, considerando as seguintes regras:
#- taxa de vacinação deve ser um número entre 0.0 e 1.0 (1.0 = 100%)
#- fator de transmissão dever ser um número maior ou igual a zero
#- taxa de ocupação de leitos deve ser um número entre 0.0 e 1.0 (1.0 = 100%)
#Se houver alguma invalidação nas regras acima, retornar uma string que descreva a regra que foi invalidada.
#Obs. 2: escreva testes para demonstrar que o sistema está funcionando.
puts "o goverto quer estipular as fazes conforme estão trabalhando para dissipar a transmissão dos virus e ocupação da uti conforme seus dados verifique. "
puts "lembre-se taxa de vacinação deve ser um número entre 0.0 e 1.0  = 100 porcento"
puts "estão escreva a taxa de vascinação da população que é de 0.0 á 1.0"
vascinacao = gets.to_f 
puts "estão escreva a taxa de transmissão vascinação da população que é de 0.0 á 1.0"
transmissao = gets.to_f
puts "estão escreva a taxa de oculpação dos leitos de uti que é de 0.0 á 1.0"
uti = gets.to_f

def fasecidade(vascinacao , transmissao , uti)
    if vascinacao >= 0.80
        return "FAZE AZUL"
    end
    if uti <= 0.50 && transmissao < 1.0
        return "FAZE VERDE"
    end
    if uti > 0.50 && transmissao < 1.0
        return "FASE AMARELA"
    end
    if uti >= 0.65 && transmissao < 1.0
        return "FASE LARANJA"
    end
    if uti >= 0.80 && transmissao >= 1.0
        return "FASE VERMELHA"
    end
    if uti >= 0.90
        return "FASE ROXA "
    end
end

fazerqueesta = fasecidade(vascinacao , transmissao , uti)
puts "a faze que a cidade esta é ".to_s + fazerqueesta.to_s