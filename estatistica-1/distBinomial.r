# Probabilidade
?dbinom
# Probabilidade Cumulativa
?pbinom

# dbinom(x, size, prob)
# x = nº de sucessos
# size = nº de experimentos
# prob = probabilidade

#1
# Problema: passar de 4 sinaleiras em 4 tempos, com probabilidade de 0, 1, 2, 3 e 4
# Nº de sucessos = 0, 1, 2, 3, 4
# Tamanho = 4 sinaleiras
# Probabilidade = 100% / 4 tempos
dbinom(0, 4, 0.25)
dbinom(1, 4, 0.25)
dbinom(2, 4, 0.25)
dbinom(3, 4, 0.25)
dbinom(4, 4, 0.25)

pbinom(4, 4, 0.25)


#2
# Problema: Acertar 7 de 12 questões, com 4 alternativas cada uma.
# Nº de sucessos = 7
# Tamanho = 12 questões
# Probabilidade = 100% / 4 alternativas
dbinom(7, 12, 0.25)
