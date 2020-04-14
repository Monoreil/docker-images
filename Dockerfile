FROM alpine:latest

# shell
RUN /bin/sh

#timezon install
RUN apk add tzdata && \
      cp /usr/share/zoneinfo/Asia/Seoul /etc/localtime && \
      echo 'Asia/Seoul' > /etc/timezone && \
      apk del tzdata  && \
      apk add python 

WORKDIR /www


ENTRYPOINT ["python", "-m", "SimpleHTTPServer", "8000"]
