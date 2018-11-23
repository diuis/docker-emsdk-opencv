FROM diuis/docker-emsdk

USER root
RUN apt-get update && apt-get install -y unzip

USER appuser
RUN wget https://github.com/opencv/opencv/archive/3.4.4.zip -P /home/appuser
