# install the following packages as the first thing
required_packages <- c("tidyverse", 
                       "here",
                       "labelled",
                       "tableone",
                       "flextable",
                       "kableExtra",
                       "gtsummary"
                       )

for(i in required_packages){
  
  install.packages(i)
  
}

# for exporting gt tables as figures
webshot::install_phantomjs()