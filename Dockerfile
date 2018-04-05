FROM alpine
MAINTAINER kev <908504609@qq.com>

ADD ytdown.py /usr/bin/ytdown

RUN chmod +x /usr/bin/ytdown && set -xe \
&& apk add --no-cache ca-certificates \
ffmpeg \
openssl \
python3 \
&& pip3 install youtube-dl && pip3 install --upgrade youtube-dl && pip3 install \
&& pip3 install requests \
&& pip3 install pytube

WORKDIR /data
ENTRYPOINT ["youtube-dl"]
CMD ["--help"]
