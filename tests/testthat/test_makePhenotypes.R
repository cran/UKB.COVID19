
pheno <- makePhenotypes(ukb.data=covid_example("sim_ukb.tab.gz"),
                        res.eng=covid_example("sim_result_england.txt.gz"),
                        death.file=covid_example("sim_death.txt.gz"),
                        death.cause.file=covid_example("sim_death_cause.txt.gz"),
                        hesin.file=covid_example("sim_hesin.txt.gz"),
                        hesin_diag.file=covid_example("sim_hesin_diag.txt.gz"),
                        hesin_oper.file=covid_example("sim_hesin_oper.txt.gz"),
                        hesin_critical.file=covid_example("sim_hesin_critical.txt.gz"),
                        code.file=covid_example("coding240.txt.gz"),
                        pheno.type = "severity",
                        out.name=paste0(covid_example("results"),"/phenotype"))
