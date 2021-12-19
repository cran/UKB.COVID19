
test_that("Covariate association test", {
  
  covar <- risk_factor(ukb.data=covid_example("sim_ukb.tab.gz"),
                       ABO.data=covid_example("sim_covid19_misc.txt.gz"),
                       hesin.file=covid_example("sim_hesin.txt.gz"),
                       res.eng=covid_example("sim_result_england.txt.gz"))
  
  phe <- makePhenotypes(ukb.data=covid_example("sim_ukb.tab.gz"),
                        res.eng=covid_example("sim_result_england.txt.gz"),
                        death.file=covid_example("sim_death.txt.gz"),
                        death.cause.file=covid_example("sim_death_cause.txt.gz"),
                        hesin.file=covid_example("sim_hesin.txt.gz"),
                        hesin_diag.file=covid_example("sim_hesin_diag.txt.gz"),
                        hesin_oper.file=covid_example("sim_hesin_oper.txt.gz"),
                        hesin_critical.file=covid_example("sim_hesin_critical.txt.gz"),
                        code.file=covid_example("coding240.txt.gz"),
                        pheno = "susceptibility")
  
  asso <- log_cov(pheno=phe, covariates=covar, phe.name="pos.neg", cov.name=c("sex","age","bmi"))
  
  expect_s3_class( asso, "data.frame" )
  expect_equal( nrow(asso), 4 )
  expect_equal( colnames(asso), c("Estimate","OR","2.5 %","97.5 %","p") )
  
})
