fx <- function(x){
  return (x^2+2*x+1)
}

Trapezoid <- function(a, b, eps, fx ){
  n = 1000
  h=(b-a)/n
  res=0
  for(i in 1:(n - 1))
    res=res+(fx(a+i*h))
  res = h*(res + (fx(a) + fx(a+n*h))/2)
  if(eps>=1)
  {
    return (round(res, digits=eps))
  }
  else
    count=0
  while(eps<1)
  {
    eps=eps*10
    count=count+1
  }
  return (round(res,digits=count))
}


Trapezoid(10,30,0.000000001,fx)
integrate(fx,10,30)
