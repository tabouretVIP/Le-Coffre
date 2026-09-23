#exercice1 
#(1) 
c1 <- 10:25
c1
c2 <- seq(10,25)
c2
#(2)
c3 <- seq(20,40,5)
c3
#(3) 
c4 <- rep(28,10)
c4

#(4)
v <- 101:112
v
# Ou bien vous pouvez utliser seq(101:112) 

#(5)
w <- rep(c(4,6,3),4)
w
#(6)
x <- c(rep(4,8),rep(6,7),rep(3,5))
x

#(7)
# w[1:5]  les cinq premières valeurs de w 
#x[11:20]  les dix dernières valeurs de x

y <- c(rep(w[1:5],2), x[11:20])
y
#(8)
y[y!=3]
#(9)
z<-c(1,3,5)
z
sqrt(z)














#exercice 2
#(1)
A <- matrix(c(1,0,3,4,5,5,0,4,5,6,3,4,0,1,3,2), ncol = 4, dimnames=list(c("ligne 1", "ligne 2", "ligne 3", "ligne 4"), c("colonne 1", "colonne 2","colonne 3","colonne 4")))
A
#(2)
B<- A[,-2]
B
#(3)
det(A)
#(4)
solve(A)

#(5)

eigen(A)

propre <- eigen(A)

l <- propre$values[1]

l
x <- propre$vectors[,1]

x
#A*x-l*x=0














#exercice 3
#(1) 
fac <- factor(c("a","b","c","a","a","b","a","c","c","a"))
fac
#(2)
ordered(fac,levels=c("a","c","b"))
#(3)
which(fac=="a")
which(fac=="b")
which(fac=="c")

length(which(fac == "a"))
length(which(fac == "b"))
length(which(fac == "c"))

#(4)
table(fac)
#ceci donne les effctifs de a, b et c dans fac









#exercice 4

odds <- 1 + 2*(0:5)          # les nombres impairs de 1 à 11
odds
primes <- c(2,3,5,7,11,13)   # les nombres premiers de 2 à 13

length(odds)                 # longueur de odds

length(primes)               # longueur de primes

odds + 1                     # les nombres pairs de 2 à 12

odds + primes                # somme terme par terme

odds * primes                # produit terme par terme

odds[3]                      # la troisisème valeur de odds

odds[-3]                     # retirer la troisième valeur de odds
primes[odds]                 # extraire la 2ème, 3ème, 5ème valeur de primes (7ème valeur etc. pas possible)
primes[primes >=7]           # garder les valeurs de primes qui sont plus grandes ou égales 7
sum(primes[primes > 5])      # somme de ces valeurs
sum(odds[odds > 5])          # de même pour odds
odds > 5                     # décider pour chaque valeur de odds si elle dépasse 5
sum(odds > 5)                # le nombre de valeurs dans odds qui dépassent 5
sum(primes < 5 | primes > 9) # le nombre de valeurs dans primes qui sont plus petites que 5 ou plus grandes que 9

#exercice 5
#(1)
nom <- c("Pierre", "Babou", "Julien", "Gana", "Garie")
nom

#(2)
(age<-data.frame(age=c(73, 56, 25, 29, 80),row.names=nom))
(poids<-data.frame(poids=c(85,70,65,85,62),row.names=nom))
(taille<-data.frame(taille=c(1.70,1.75,1.75,1.80,1.56),row.names=nom))

#(3)
(amis<-cbind(age,poids,taille))


#(4)
poids.lourds <- subset(amis, poids>=80, select=c(poids))
poids.lourds

#alternative
poids.lourds <- poids[poids>=80, , drop=F]
poids.lourds

#(5) 
taille.poids.lourds <- subset(amis, poids>=80,select=c(taille))
taille.poids.lourds

#alternative
taille.poids.lourds <- taille[poids>=80, , drop=F]
taille.poids.lourds

#(6)
taille.jeune.poids.legers <- subset(amis, age <= 30 & poids <= 70,select=c(age,taille))
taille.jeune.poids.legers

#exercice 6

dom<-seq(0,2*pi,length=100)
fct1<-sin(dom)
fct2<-cos(dom)
plot(fct1~dom,type="l",xlab="x",ylab="sin x et cos x")
lines(fct1~dom)
lines(fct2~dom)



# exercice 7

#(1)
(fusion1<-read.table("fusion1.csv",sep=";",dec=",",header=T))
(fusion2<-read.table("fusion2.csv",sep=";",dec=",",header=T))
#Vérifie ton répertoire de travail
getwd()

#(2)
(fusion1<-fusion1[,c("yhat1","yhat3")])
(fusion2<-fusion2[,c("Rhamnos","Arabinos")])
(ex3<-cbind(fusion1,fusion2))

#(3)
(yres1<-ex3$Rhamnos-ex3$yhat1)
(yres2<-ex3$Arabinos-ex3$yhat3)
(ex3<-cbind(ex3,yres1,yres2))
write.table(ex3,"fusion3.csv",sep=";",dec=".",row.names=F)
# test :
(fusion3<-read.table("fusion3.csv",sep=";",dec=".",header=T))

#(4)
plot(yres2~yres1,data=ex3)

#(5)
histo.yres1<-hist(yres1,breaks=seq(min(yres1),max(yres1),length=11),main="yres1",prob=T)

#(6)
lines(density(yres1))

#(7)
(bornes.yres1<-histo.yres1$breaks)
(effectifs.yres1<-histo.yres1$counts)
(frequences.yres1<-effectifs.yres1/sum(effectifs.yres1))

#(8)
(a<-boxplot(ex3$Arabinos))







