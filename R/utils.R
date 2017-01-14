last_char <- function(x) {
 
  n <- nchar(x)
  
  x <- substr(x, n, n)
  return(x)
   
}


fig_path <- function(x) {

y <- if (last_char(x) == '/') {
  
  file.path(x)
  
} else {
  
  file.path(paste0(x,'/'))
  
}

return(y)

}