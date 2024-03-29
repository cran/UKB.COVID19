% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/risk_factor.R
\name{risk_factor}
\alias{risk_factor}
\title{Generate covariate file}
\usage{
risk_factor(
  ukb.data,
  ABO.data = NULL,
  hesin.file,
  res.eng,
  res.wal = NULL,
  res.sco = NULL,
  fields = NULL,
  field.names = NULL
)
}
\arguments{
\item{ukb.data}{tab delimited UK Biobank phenotype file. The file should include fields of gender, year of birth, BMI, ethnic background, SES, and smoking.}

\item{ABO.data}{Latest yyyymmdd_covid19_misc.txt file.}

\item{hesin.file}{Latest yyyymmdd_hesin.txt file.}

\item{res.eng}{Latest covid result file/files for England.}

\item{res.wal}{Latest covid result file/files for Wales. Only available for downloads after April 2021.}

\item{res.sco}{Latest covid result file/files for Scotland. Only available for downloads after April 2021.}

\item{fields}{User specified field codes from ukb.data file.}

\item{field.names}{User specified field names.}
}
\value{
Outputs a covariate table, used for input for other functions. Automatically returns sex, age at birthday in 2020, SES, self-reported ethnicity, most recently reported BMI, most recently reported pack-years, whether they reside in aged care (based on hospital admissions data, and covid test data) and blood type. Function also allows user to specify fields of interest (field codes, provided by UK Biobank), and allows the users to specify more intuitive names, for selected fields.
}
\description{
This function formats and outputs a covariate table, used for input for other functions.
}
\examples{
\dontrun{
covars <- risk_factor(ukb.data=covid_example("sim_ukb.tab.gz"),
ABO.data=covid_example("sim_covid19_misc.txt.gz"),
hesin.file=covid_example("sim_hesin.txt.gz"),
res.eng=covid_example("sim_result_england.txt.gz"))
}

}
