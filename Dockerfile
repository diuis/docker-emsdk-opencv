FROM diuis/docker-emsdk-installed-python3:v1.0.12

USER root
RUN mkdir /opencv && chown appuser /opencv

USER appuser
RUN wget -nv https://github.com/opencv/opencv/tarball/3.4.4 -O /home/appuser/opencv-3.4.4.tar && \
    tar xf /home/appuser/opencv-3.4.4.tar -C /opencv/ && \
    rm /home/appuser/opencv-3.4.4.tar
