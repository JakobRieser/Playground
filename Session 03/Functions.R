#Loops
a <- 5

if (a<0)
{
print("it is a positive number")
}

if (a!=5)
{
  print("number is not equal 5")
}else{
  print ("number is equal 5")
}

#if-else-statement
abc <- sample(letters[1:5], 1000, replace = T)
df <- data.frame(v1=abc, v2="blank")...


j <- 0
while(j<1)
{
  j <- j+0.1; print(j)
}


#Creationg your own function
myfunction <- function(x,y){
  x+y
}
myfunction(4,3)

myfunction <- function(x,y){
  z <- x+y
  return(z)
}
myfunction(4,3)



