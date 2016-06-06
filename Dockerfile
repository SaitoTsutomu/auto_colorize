FROM kaixhin/torch

WORKDIR /root
RUN git clone https://github.com/satoshiiizuka/siggraph2016_colorization && \
    cd siggraph2016_colorization && \
    apt-get update && apt-get install -y wget && \
    sh download_model.sh && \
    rm -r /var/lib/apt/lists/*
WORKDIR /root/siggraph2016_colorization
CMD ["bash"]
