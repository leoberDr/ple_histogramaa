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


# Generar 5 variables aleatorias
valores1 <- rnorm(1000, mean = 0, sd = 1)
valores2 <- runif(1000, min = 0, max = 1)
valores3 <- rexp(1000, rate = 1)
valores4 <- rpois(1000, lambda = 2)
valores5 <- rbinom(1000, size = 10, prob = 0.5)

# Graficar los histogramas en una sola ventana
par(mfrow = c(2, 3)) # 2 filas, 3 columnas

hist(valores1, main = "Normal", col = "lightblue", border = "white")
hist(valores2, main = "Uniforme", col = "lightgreen", border = "white")
hist(valores3, main = "Exponencial", col = "lightpink", border = "white")
hist(valores4, main = "Poisson", col = "#000000", border = "white")
hist(valores5, main = "Binomial", col = "lightgray", border = "white")

par(mfrow = c(1, 1)) # Restablecer la configuración
