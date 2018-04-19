generate_data = function(n,p){
  covariates = matrix(rnorm(n*p,mean=0,sd=1), n, p) 
<<<<<<< HEAD
  responses = rnorm(n, 0, 1)                     
  list(covariates, responses)                    
}
=======
  responses = rnorm(n, 0, 1)
  list(covariates, responses)
}.patch
>>>>>>> b2c8d5debbca443cb3ce54a6bc3b60e6d696801e
