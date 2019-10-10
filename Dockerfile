FROM ubuntu:bionic

RUN ln -snf /usr/share/zoneinfo/Etc/UTC /etc/localtime \
    && echo "Etc/UTC" > /etc/timezone \
    && apt-get update \
    && apt-get upgrade -y \
    && apt-get install texlive-full texlive-latex-extra texlive-fonts-recommended xzdec -y \
    && apt-get install -y wget \
    && wget --no-check-certificate https://github.com/jgm/pandoc/releases/download/2.7.3/pandoc-2.7.3-1-amd64.deb \
    && dpkg -i pandoc-2.7.3-1-amd64.deb \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /data
