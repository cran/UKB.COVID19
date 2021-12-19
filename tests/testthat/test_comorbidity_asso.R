
test_that("Comorbildity association test", {
  
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

  comorb <- comorbidity_summary(ukb.data=covid_example("sim_ukb.tab.gz"),
                                hesin.file=covid_example("sim_hesin.txt.gz"), 
                                hesin_diag.file=covid_example("sim_hesin_diag.txt.gz"), 
                                ICD10.file=covid_example("ICD10.coding19.txt.gz"),
                                primary = FALSE,
                                Date.start = "16/03/2020")
  
  comorb.asso <- comorbidity_asso(pheno=phe,
                                  covariates=covar,
                                  cormorbidity=comorb[,1:11],
                                  population="white",
                                  cov.name=c("sex","age","bmi","SES","smoke","inAgedCare"),
                                  phe.name="pos.neg",
                                  ICD10.file=covid_example("ICD10.coding19.txt.gz"))  
  
  expect_s3_class( comorb.asso, "data.frame" )
  expect_equal( ncol(comorb.asso), 6 )
  expect_equal( colnames(comorb.asso), c("ICD10","Estimate","OR","2.5%","97.5%","p") )
  
})
