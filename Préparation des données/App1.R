data("hdv2003")
db<-hdv2003
View(db)
names(db)
str(db)
describe(db)
dput(names(hdv2003))
db<-rename.variable(db,c("bricol","occup"),c("bricolage","occupation"))
db$freres.soeurs <- as.factor(db$freres.soeurs)
str(db)
db$qualif
db$qualif <- as.factor(db$qualif)
db$qualif[db$qualif == "Ouvrier specialise"] <- "Ouvrier"
library(forcats)
db$qualif <- fct_recode(hdv2003$qualif,
                        "Ouvrier" = "Ouvrier specialise",
                        "Ouvrier" = "Ouvrier qualifie",
                        "Interm" = "Technicien",
                        "Interm" = "Profession intermediaire")
##ou bien (Attension la premiere change les modalité de la variable qualif)
db$qualif <- fct_collapse(db$qualif,
                          Ouvrier= c("Ouvrier specialise", "Ouvrier qualifie"),
                          Interm = c("Technicien", "Profession intermediaire"))

levels(db$qualif)
db$trav.satisf=ordered(db$trav.satisf,levels=c( "Satisfaction"  , "Insatisfaction" ,"Equilibre" ))
db$age <- cut(db$age, breaks = 5)
table(db$age)

