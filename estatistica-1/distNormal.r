#1
# Calculando probabilidade
?pnorm

#1.1
# Problema: probabilidade de pegar um objeto < 6kg (P[X <= x])
# Média = 8; Desvio padrão: 2
pnorm(6, 8, 2)

#1.2
# Problema: probabilidade de pegar um objeto > 6kg (P[X > x])
# Média = 8; Desvio padrão: 2
# lower.tail = ">"
pnorm(6, 8, 2, lower.tail = FALSE)

#1.3
# Problema: probabilidade de pegar um objeto < 6kg OU objeto > 10kg
# Média = 8; Desvio padrão: 2
pnorm(6, 8, 2) + pnorm(10, 8, 2, lower.tail = FALSE)

#1.4
# Problema: probabilidade de pegar um objeto < 10kg OU objeto > 8kg
# Média = 8; Desvio padrão: 2
pnorm(10, 8, 2) + pnorm(7, 8, 2)


#2
# Gerar valores aleatórios (distribuídos)
?rnorm
x = rnorm(100)
x
qqnorm(x) #gráfico de normalidade
qqline(x)

# Teste de Shapiro
?shapiro.test
shapiro.test(x)
