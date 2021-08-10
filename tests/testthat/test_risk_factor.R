
covar <- risk.factor(ukb.data=covid_example("sim_ukb.tab.gz"), 
                         ABO.data=covid_example("sim_covid19_misc.txt.gz"),
                         hesin.file=covid_example("sim_hesin.txt.gz"),
                         res.eng=covid_example("sim_result_england.txt.gz"),
                         out.file=paste0(covid_example("results"),"/covariate"))

