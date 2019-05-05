FROM frolvlad/alpine-glibc

RUN apk add --no-cache --virtual build-dependencies --update wget curl ca-certificates
RUN wget -P /tmp https://github.com/$(curl -s -L https://github.com/OmniLayer/omnicore/releases/latest | egrep -o -m 1 '/OmniLayer/omnicore/releases/download/(.+)/omnicore-(.+)-x86_64-linux-gnu.tar.gz')
RUN cd /tmp && tar -xzvf $(ls | egrep -o -m 1 'omnicore-(.+)-x86_64-linux-gnu.tar.gz')
RUN cd /tmp && mv $(ls | egrep -o -m 1 '^omnicore-(.+)$') /omnicore
RUN apk del build-dependencies
RUN rm -rf /tmp/*

WORKDIR /omnicore

EXPOSE 8332
EXPOSE 18332

ENTRYPOINT [ "/omnicore/bin/omnicored" ]
