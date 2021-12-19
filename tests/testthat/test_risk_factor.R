
test_that("Generate risk fastors",{
  
  covar <- risk_factor(ukb.data=covid_example("sim_ukb.tab.gz"),
                       ABO.data=covid_example("sim_covid19_misc.txt.gz"),
                       hesin.file=covid_example("sim_hesin.txt.gz"),
                       res.eng=covid_example("sim_result_england.txt.gz"))
  
  expect_s3_class( covar, "data.frame" )
  expect_equal( colnames(covar), c("ID", "sex", "age", "bmi", "ethnic", "other.ppl", "black", "asian", "mixed", "white", "SES", "smoke", "blood_group", "O", "AB", "B", "A", "inAgedCare"))
  
})

