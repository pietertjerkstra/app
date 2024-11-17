FROM rocker/rstudio:latest

# Install depencendcies

RUN apt-get update \
&& apt-get upgrade -y \
&& apt-get install -y  
   
#copilot 
RUN echo "copilot-enabled=1" | tee -a /etc/rstudio/rsession.conf > /dev/null

RUN apt-get update -qq && apt-get install -y \
      libssl-dev \
      libcurl4-gnutls-dev


RUN Rscript -e 'install.packages("plumber")'

EXPOSE 8000:8000
EXPOSE 8787:8787

# copy everything from the current directory into the container
COPY / /home/rstudio

#CMD ["/home/rstudio/start_app.R"]
