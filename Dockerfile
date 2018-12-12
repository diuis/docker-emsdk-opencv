FROM diuis/docker-emsdk-installed-python3:v1.0.12

RUN wget -nv https://github.com/opencv/opencv/tarball/3.4.4 -O /home/appuser/opencv-3.4.4.tar && \
    mkdir /home/appuser/opencv && \
    tar xf /home/appuser/opencv-3.4.4.tar -C /home/appuser/opencv && \
    rm /home/appuser/opencv-3.4.4.tar
