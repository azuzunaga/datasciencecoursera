complete <- function(directory, id = 1:332) {
        
        # Create file index
        fi <- list.files(directory, full.names = TRUE)
        
        # Create empty data frames
        dat <- data.frame()
        foo <- data.frame(id = numeric(), nobs = numeric())
        
        # Read needed files and calculate complete cases
        for(i in id) {
                dat <- rbind(dat, read.csv(fi[i]))
                foo <- rbind(foo, data.frame(id = i, nobs = sum(complete.cases(dat[dat$ID == i, ][2:3]))))
        }
        foo
}