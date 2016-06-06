FROM kaixhin/torch

RUN apt-get update && apt-get install -y wget && \
    cd ~ && \
    git clone https://github.com/satoshiiizuka/siggraph2016_colorization && \
    cd siggraph2016_colorization && \
    sh download_model.sh && \
    rm -r /var/lib/apt/lists/*
ADD flask.tgz /root/siggraph2016_colorization/
WORKDIR /root/siggraph2016_colorization
ENTRYPOINT ["th", "colorize.lua"]
