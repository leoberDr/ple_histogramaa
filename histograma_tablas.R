set.seed(123) # Para reproducibilidad

# Generar los datos
valores_uniforme <- runif(1000, min = 0, max = 1)
valores_normal <- rnorm(1000, mean = 0, sd = 1)

# Agrupar los datos en clases (intervalos) y crear tablas de frecuencia
tabla_uniforme <- table(cut(valores_uniforme, breaks = 5))
tabla_normal <- table(cut(valores_normal, breaks = 5))

# Mostrar las tablas
print(tabla_uniforme)
print(tabla_normal)

# Graficar los histogramas con las mismas clases
par(mfrow = c(1, 2)) # Dividir la ventana gráfica

barplot(tabla_uniforme, main = "Distribución Uniforme", xlab = "Intervalo", col = "skyblue", border = "white")
barplot(tabla_normal, main = "Distribución Normal", xlab = "Intervalo", col = "salmon", border = "white")

par(mfrow = c(1, 1)) # Restablecer la configuración
