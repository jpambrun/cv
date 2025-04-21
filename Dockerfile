FROM leplusorg/latex
USER root
RUN apt-get update
RUN apt-get install -y fonts-roboto
USER latex