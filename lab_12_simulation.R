generate_data = function(n,p){
  covariates = matrix(rnorm(n*p,mean=0,sd=1), n, p) 
  responses = rnorm(n, 0, 1)
  list(covariates, responses)
}