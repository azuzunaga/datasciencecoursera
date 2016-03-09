pollutantmean <- function(directory, pollutant, id = 1:332){

        # Create file index
        fi <- list.files(directory, full.names = TRUE)
        
        # Create empty dataframe
        dat <- data.frame()
        
        # Read needed files
        for(i in id) {
                dat <- rbind(dat, read.csv(fi[i]))
        }
        
        # Calculate the mean
        mean(dat[, pollutant], na.rm = TRUE)
        
}