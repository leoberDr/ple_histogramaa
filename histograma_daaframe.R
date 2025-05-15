# Crear una tabla con 1000 filas y dos columnas:
# - 'uniforme': números aleatorios de distribución uniforme [0,1]
# - 'normal': números aleatorios de distribución normal (media=0, sd=1)

set.seed(123) # Para reproducibilidad

tabla <- data.frame(
    uniforme = runif(1000, min = 0, max = 1),
    normal = rnorm(1000, mean = 0, sd = 1)
)

# Mostrar las primeras filas de la tabla
head(tabla)

par(mfrow = c(1, 2)) # Configura la ventana gráfica para 1 fila y 2 columnas

hist(tabla$uniforme, main = "Distribución Uniforme", xlab = "Valor", col = "skyblue", border = "white", breaks = 5)
hist(tabla$normal, main = "Distribución Normal", xlab = "Valor", col = "salmon", border = "white", breaks = 5)

par(mfrow = c(1, 1)) # Restablece la configuración gráfica
