pollutantmean <- function(directory, pollutant, id = 1:332) {
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files
  # Get the files names
  arquivos = list.files(directory, pattern = ".csv", full.names = T)
  dados <- data.frame()
  
  for(i in id){
  dados <- rbind(dados, read.csv(arquivos[i]))
  }
  
  mean(na.omit(dados[,pollutant]))
  ## 'pollutant' is a character vector of length 1 indicating
  ## the name of the pollutant for which we will calculate the
  ## mean; either "sulfate" or "nitrate".
  
  ## 'id' is an integer vector indicating the monitor ID numbers
  ## to be used
  
  ## Return the mean of the pollutant across all monitors list
  ## in the 'id' vector (ignoring NA values)
  ## NOTE: Do not round the result!
}