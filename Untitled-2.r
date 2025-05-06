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
