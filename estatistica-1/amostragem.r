#1
# Dataset
iris
dim(iris) # 150 instancias x 5 atributos
# Sample: gera um grupo de indivíduos ou dados retirados da população
?sample()
amostra <- sample(c(0, 1), 150, replace = TRUE, prob = c(0.5, 0.5))
amostra
length(amostra[amostra == 0])
length(amostra[amostra == 1])

?set.seed
set.seed(1000)
sample(100, 1)


#2
# Strata: gera um subconjunto da amostra (amostra estratificada)
#2.1
install.packages("sampling")
library(sampling)
?strata()
amostra2 <- strata(iris, c("Species"), size = c(25, 25, 25), method = "srswor")
summary(amostra2)

#2.2
# Dataset
infert
dim(infert) # 248 instâncias x 8 atributos
summary(infert)

# Balanceando coluna "education"
# Nº elementos da amostra estratificada / população * tamanho desejado da amostra
round(12 / 248 * 100)
round(120 / 248 * 100)
round(116 / 248 * 100)
amostraEstratificada <- strata(infert, c("education"), c(5, 48, 47), method = "srswor")
summary(amostraEstratificada)


#3
# Amostra sistemática: gera amostras aleatórias
# Dataset
iris # 150 instancias x 5 atributos

install.packages("TeachingSampling")
library(TeachingSampling)
?S.SY
amostraSistematica <- S.SY(150, 10) #de 10 em 10 instâncias
amostraSistematica
amostraIris <- iris[amostraSistematica, ]
amostraIris
