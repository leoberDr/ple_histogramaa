# histograma.R
# Crear un histograma simple en R

# Crear un vector de temperaturas simuladas para el municipio de La Paz
# Crear un vector de 100 valores aleatorios entre 15 y 35 grados (temperatura ambiente)
        temperaturas_lapaz <- runif(100, min = 15, max = 35)



hist(temperaturas_lapaz,
     breaks = 10,  # puedes probar con 20, 50 o más
     main = "Histograma de Temperaturas en La Paz",
     xlab = "Temperatura (°C)",
     ylab = "Frecuencia",
     col = "#fbff20",
     border = "black")


print(temperaturas_lapaz)