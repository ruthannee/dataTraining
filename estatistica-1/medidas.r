salarios <- c(40000, 18000, 12000, 250000, 30000, 140000, 300000, 40000, 800000)

# Média
mean(salarios)

# Mediana
median(salarios)

# Quartis
quartis <- quantile(salarios)
quartis
quartis[4] #4º quartil
summary(salarios)

# Desvio Padrão
sd(salarios)

# Variação
# Calcula a variância amostral, dividindo por n - 1, sendo n = amostra
?var
var(salarios)
