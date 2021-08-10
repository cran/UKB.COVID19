
comorb <- comorbidity.summary(ukb.data=covid_example("sim_ukb.tab.gz"),
                              hesin.file=covid_example("sim_hesin.txt.gz"), 
                              hesin_diag.file=covid_example("sim_hesin_diag.txt.gz"), 
                              ICD10.file=covid_example("ICD10.coding19.txt.gz"),
                              primary = FALSE,
                              Date.start = "16/03/2020",
                              outfile=paste0(covid_example("results"),"/comorbidity_2020-3-16.txt"))
