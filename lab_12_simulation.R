generate_data = function(n,p){
  covariates = matrix(rnorm(n*p,mean=0,sd=1), n, p) 
  responses = rnorm(n, 0, 1)                     
  list(covariates, responses)                    
}

model_select = function(covariates, responses, cutoff){
  retained = summary(lm(responses~covariates))$coefficients[,4][summary(lm(responses~covariates))$coefficients[,4] <= cutoff]
  indices = which(summary(lm(responses~covariates))$coefficients[,4][summary(lm(responses~covariates))$coefficients[,4] <= cutoff] %in% summary(lm(responses~covariates))$coefficients[,4])
  again = summary(lm(responses~covariates[,indices]))$coefficients[,4][summary(lm(responses~covariates[,indices]))$coefficients[,4] <= cutoff]
  if (length(again == 0)){
   return(c())}
    }
    
run_simulation = function(n_trials, n, p, cutoff){
   data = generate_data(n,p)
   selectdata = model_select(data[[1]], data[[2]], cutoff)
   datapat= coef(selectdat[[1:2
}
make_plot function(datapath0.patch
