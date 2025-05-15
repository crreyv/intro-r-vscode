df <- data.frame(x = 1:10, y = 11:20)

print(df)
#indexado: trabajar con los indices
df$x #accede a la columna llamada
df$y
df$y[4] #accede a la posición 4 de 'y'
df$y[1:5] #accede a los numeros de la posición 1 hasta la 5 de 'y'
df$x[3:9]
b <- df$y[2:5]
print (b[3])
c <-df$y[2:9] 
promedio <- sum(c)/length(c) 
print(promedio)
df[,1] #todas las filas de la primera columna
df[,2] #todas las filas de la segunda columna
df[,2][4] #posición 4 de la segunda columna
df[4,2] #posición 4 de la segunda columna
# Calcula el promedio de cada columna
promedios <- colMeans(df)
print(promedios)
# Aplica mean a cada columna del data frame
promedios <- sapply(df, mean)
print(promedios)
promedioss <- lapply(df, mean) #devuelve una lista
print(promedioss)
k <- data.frame(x= rnorm(100,mean=0,sd=1),y=runif(100,0,1),z=sample(1:100,100,replace=F))
print(k)
Promedios <- sapply(k,mean) # Promedio de cada columna
print(Promedios)
Desviacion <- sapply(k,sd) # Desviación estándar de cada columna
print(Desviacion)

#08/05/2025
a <- 5
b <- 2*8
y <- c(5,2,1)
z  <- "hola"
rm(list=ls()) #elimina todas las variables
p <- function(a,b) {
    return (a+b)/2 #devuelve lo que está dentro de los paréntesis
}
a <- 5
b <- 12
p(a,4) #llama a la función p con los argumentos a y 4
conos <- data.frame (
    ciudad = c("A", NA, "C", "D", "E"),
    sabor = c('Vainilla', 'Chocolate', 'Vainilla', NA, 'Fresa'),
    cantidad = c(5, 10, NA, 12, NA)
)
print(conos)
numNAconos <- function(df) {
    # Contar el número de NA en cada columna
    numNA <- sapply(df, function(x) sum(is.na(x)))
    return(numNA)
}    
print(numNAconos(conos)) #llama a la función numNAconos con el data frame 'conos'
# Contar los NA de la columna 'sabor'
numNA_sabor <- sum(is.na(conos$sabor))
print(numNA_sabor)
is.na(c(5,NA,3,4,NA))
a <- data.frame( x=c(5,NA,3,4,NA),
                y= c(1,2,NA,4,5))
is.na(a) #devuelve un vector lógico indicando si hay NA en cada posición
rm(list=ls())
numNAdf <- function(df){
    return(sum(is.na(df))) #devuelve el número de NA en el data frame
}
tabla <- data.frame(ciudad=c("A",NA,"C","D","E"),
                    sabor=c('Vainilla','Chocolate','Vainilla',NA,'Fresa'),
                    cantidad=c(5,10,NA,12,NA))
sample <- (1:6) #vector de 1 a 6
set.seed(1) #fijar la semilla para reproducibilidad
sample (1:6,2) #muestra aleatoria de 2 elementos del vector 1:6
#Tarea: función que simule el lanzamiento de dos dados
sample(1:6,2,replace=T)
#Función que simule el lanzamiento de dos dados
dados <- function() {
    dado1 <- sample(1:6, 1, replace = TRUE)
    dado2 <- sample(1:6, 1, replace = TRUE)
    return(c(dado1, dado2)) # Devuelve ambos valores como un vector
}
resultado <- dados() # Llama a la función y guarda el resultado
print(resultado)     # Muestra el resultado

#Función que cuente cuantos lanzamientos fueron necesarios para obtener ambos números pares (pero no necesariamente iguales)
lanzamiento <- function() {
    intentos <- 0
    repeat {
        dado3 <- sample(1:6, 1, replace = TRUE)
        dado4 <- sample(1:6, 1, replace = TRUE)
        intentos <- intentos + 1
        if (dado3 %% 2 == 0 && dado4 %% 2 == 0) break
    }
    return(intentos)
}

# Llama a la función y muestra el resultado
print(lanzamiento())