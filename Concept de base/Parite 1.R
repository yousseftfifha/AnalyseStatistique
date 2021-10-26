#1.1 :
Individus <- c("Erika","Célia","Eric","Eve","Paul","Jean","Adan","Louis","Jules","Léo")
Poids <- c(16,14,13.5,15.4,16.5,16,17,14.8,17,16.7)
Taille <- c(100,97,95.5,101,100,98.5,103,98,101.5,100)
Sexe <- c("F","F","G","F","G","G","G","G","G","G")

# 1.2 :
mean(Poids)  # résultat :  [1] 15.69
mean(Taille) # résultat :  [1] 99.45

# 1.3 :
IMC <- Poids/(Taille/100)^2
IMC   # affichage des résultats

# 1.4 :
maTable <- data.frame(Individus,Poids,Taille,Sexe,IMC)

# 1.5 :
help(plot)

# 1.6 :
plot(Taille,Poids,main="Nuage de points du Poids en fonction de la Taille")
