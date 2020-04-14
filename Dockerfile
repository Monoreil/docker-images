FROM alpine:latest

# shell
RUN /bin/sh

#timezon install
RUN apk add tzdata && \
      cp /usr/share/zoneinfo/Asia/Seoul /etc/localtime && \
      echo 'Asia/Seoul' > /ect/timezone && \
      apk del tzdata  && \
      apk add python && \
      mkdir -p /www && \
      cd /www


CMD ["python -m SimpleHTTPServer 8000"]
