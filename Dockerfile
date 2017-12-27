FROM rocker/shiny 

RUN R -e "install.packages(c('readODS'),dependencies=TRUE, repos='cran.rstudio.com/')"

RUN R -e "install.packages(c('data.table'),dependencies=TRUE, repos='cran.rstudio.com/')"

RUN R -e "install.packages(c('leaflet'),dependencies=TRUE, repos='cran.rstudio.com/')"

RUN R -e "install.packages(c('RMySQL'),dependencies=TRUE, repos='cran.rstudio.com/')"
