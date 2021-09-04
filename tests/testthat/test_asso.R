
covar <- read.table(paste0(covid_example("results"),"/covariate.txt"),header = T)

phe <- read.table(paste0(covid_example("results"),"/phenotype.txt"),header = T)

log_cov(pheno=phe, covariates=covar, phe.name="hospitalisation", cov.name=c("sex","age","bmi"))
