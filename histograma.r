# histogramas
temperatura <- c(29.28,32.4,35.3,27.2,29.3,30.4)
hist(temperatura,
main='temperatura c°',
xlab='rango',
ylab='frecuencia',
col='green',
border='darkblue',
breaks=9, 
xlim=c(27, 36))
# histograma de frecuencias
runif(3,min=0,max=1) #3 valores aleatorios entre 0 y 1
temperatura1 <- runif(1000, min=25, max=35) #1000 valores aleatorios entre 25 y 35
hist(temperatura1,
main='Temperatura c°',
xlab='rango',
ylab='frecuencia',
col='lightblue',
border='darkblue',
breaks=9, 
xlim=c(25, 35)) #histograma de frecuencias de temperatura

temp<- data.frame(
    uniforme= runif(1000, min=25, max=35),
    normal= rnorm(1000, mean=30, sd=2)
)
print(temp)
hist(temp$uniforme,
main='Temperatura uniforme',
xlab='rango',
ylab='frecuencia',
col='lightblue',
border='darkblue',
breaks=9, 
xlim=c(25, 35)) 
hist(temp$normal,
main='Temperatura normal',
xlab='rango',
ylab='frecuencia',
col='lightblue',
border='darkblue',
breaks=9, 
xlim=c(25, 35)) 

par(mfrow=c(1,2)) # dos gráficos en una fila
hist(temp$uniforme,
 main='Temperatura uniforme', 
 xlab='rango', ylab='frecuencia', 
 col='lightblue', 
 border='darkblue', 
 breaks=9, 
 xlim=c(25, 35))
hist(temp$normal, 
main='Temperatura normal', 
xlab='rango', 
ylab='frecuencia', 
col='pink', 
border='darkred',
 breaks=9, 
 xlim=c(25, 35))
par(mfrow=c(1,1)) # volver a un solo gráfico

histablas <- function(df){
    hist(df$uniforme,
    main='temperatura uniforme columna',
    xlab='rango',
    ylab='frecuencia',
    col='lightblue',
    border='darkblue',
    breaks=9,
    xlim=c(25, 35))
}
histablas(temp)
histablas <- function(df){
    hist(df$normal,
    main='temperatura normal columna',
    xlab='rango',
    ylab='frecuencia',
    col='pink',
    border='darkred',
    breaks=9,
    xlim=c(25, 35))
}
histablas(temp)
