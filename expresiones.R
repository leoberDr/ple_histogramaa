
# cargar archivo csv como dataframe
df <- read.csv("misdatos.csv")

#filtrar dataframe por la categoría "A"
df_A <- df[df$Categoricos == "A", ]

# Imprimir el dataframe filtrado
print(df_A)

#calcular el promedio de las columnas numéricas
promedios <- colMeans(df_A[sapply(df_A, is.numeric)], na.rm = TRUE)

# Imprimir los promedios
print(promedios)

# Calcular la media para cada columna numérica de la categoría "A"
medias_A <- sapply(df_A[sapply(df_A, is.numeric)], mean, na.rm = TRUE)
print(medias_A)

 