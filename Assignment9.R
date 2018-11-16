# Question1
library(microbenchmark)
odd_count = function(x) {
  odd_num = 0
  for (i in 1:length(x)) {
    if (x[i] %% 2 == 1) 
      odd_num = odd_num + 1
  }
  return(odd_num)
}

odd_count1 <- function(x){
  odd_sum1 = sum(x%%2 == 1)
  return(odd_sum1)
}

x <- c(1:100)
microbenchmark(odd_count(x),odd_count1(x))
?microbenchmark()

# Question2
sort_vec = function(x, ascending) {
  if (length(x) < 2) 
    return (x)
  if (ascending == TRUE) {
    for(last in length(x):2) {
      for(first in 1 : (last - 1)) {
        if(x[first] > x[first + 1]) { 
          temp = x[first]
          x[first] = x[first + 1] 
          x[first + 1] = temp
        } 
      }
    }  
  }
 if (ascending == FALSE) {
   for(last in length(x):2) {
     for(first in 1 : (last - 1)) {
       if(x[first] < x[first + 1]) { 
         temp = x[first]
         x[first] = x[first + 1] 
         x[first + 1] = temp
       } 
     }
   }    
 } 
  return(x) 
}

sort_vec(c(3, 1, 2), ascending = TRUE)
sort_vec(c(3, 1, 2), ascending = FALSE)  


# Question3

N = 1000
data_series = 0 
system.time({for (i in 2:N){
  data_series[i] = data_series[i-1] + sample(c(-1, 1), 1) }
})

N = 1000
data_series = c(NA)
length(data_series <- N)
system.time({for (i in 2:N){
  data_series[i] = data_series[i-1] + sample(c(-1, 1), 1) }
})


N = 10000
data_series = 0 
system.time({for (i in 2:N){
  data_series[i] = data_series[i-1] + sample(c(-1, 1), 1) }
})

N = 10000
data_series = c(NA)
length(data_series <- N)
system.time({for (i in 2:N){
  data_series[i] = data_series[i-1] + sample(c(-1, 1), 1) }
})

N = 100000
data_series = 0 
system.time({for (i in 2:N){
  data_series[i] = data_series[i-1] + sample(c(-1, 1), 1) }
})

N = 10000
data_series = c(NA)
length(data_series <- N)
system.time({for (i in 2:N){
  data_series[i] = data_series[i-1] + sample(c(-1, 1), 1) }
})
