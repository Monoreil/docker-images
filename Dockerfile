FROM alpine:latest

# shell
RUN /bin/sh

#timezon install
RUN apk add tzdata

#time set KST
RUN ln -sf /usr/share/zoneinfo/Asia/Seoul /etc/local
#intstall python
RUN apk add python

#make /www directory
RUN mkdir /www

#interect /www ang simpleHTTPserver porting 8000    
RUN cd /www

CMD["python -m SimpleHTTPServer 8000"]

///RUN python -m SimpleHTTPServer 8000