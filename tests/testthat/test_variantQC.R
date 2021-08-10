
variantQC(snpQcFile=covid_example("sim_ukb_snp_qc.txt.gz"), 
          mfiDir=covid_example("alleleFreqs"), 
          mafFilt=0.001, 
          infoFilt=0.5, 
          outDir=covid_example("results"))
  