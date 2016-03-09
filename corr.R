corr <- function(directory, threshold = 0) {

        fi <- list.files(directory, full.names = TRUE)
        
        foo <- vector(mode = "numeric", length = 0)
        
        for(i in seq_along(fi)) {
                dat <- read.csv(fi[i])
                cc <- sum(complete.cases(dat[2:3]))
                if(cc > threshold) {
                        dat <- dat[complete.cases(dat), ]
                        foo <- c(foo, cor(dat[2], dat[3]))
                }
        }
        foo 
}
