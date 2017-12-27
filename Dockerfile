FROM rocker/shiny 

RUN apt-get update ; apt-get -f -y dist-upgrade

RUN apt-get install libmariadb-client-lgpl-dev

RUN apt-get install libxml2-dev

RUN R -e "install.packages(c('readODS'),dependencies=TRUE, repos='cran.rstudio.com/')"

RUN R -e "install.packages(c('data.table'),dependencies=TRUE, repos='cran.rstudio.com/')"

RUN R -e "install.packages(c('leaflet'),dependencies=TRUE, repos='cran.rstudio.com/')"

RUN R -e "install.packages(c('RMySQL'),dependencies=TRUE, repos='cran.rstudio.com/')"
