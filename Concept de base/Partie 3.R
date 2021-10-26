ccont <- c(11,13,15.5,12,8,9,13,16)
exam <- c(8.5,7,16,9,7,13,14,17)

moy <-ccont*0.4+exam*0.6

Note <- data.frame(ccont,exam,moy)
colnames(Note) <- c("Controle continu","Examen","Moyenne")
Note


Note1 <-Note[order(Note$moy),]
Note1
attach(note)
note_ord=note[order(moyenne),]
valid=note[which(moyenne=10),]
nrow(valid)
max(moyenne)
min(moyenne)
etudiant=note[which(note$moyenne>15),]
write.table(note,"validation.txt",sep="")