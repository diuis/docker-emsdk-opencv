FROM diuis/docker-emsdk-installed-python3:v1.0.10

USER root
RUN apt-get update && apt-get install --no-install-recommends -y unzip && \
    apt-get autoremove && apt-get clean

RUN mkdir /opencv && chown appuser /opencv

USER appuser
RUN wget https://github.com/opencv/opencv/archive/3.4.4.zip -P /home/appuser && \
    unzip /home/appuser/3.4.4.zip -d /opencv/ && \
    rm /home/appuser/3.4.4.zip
