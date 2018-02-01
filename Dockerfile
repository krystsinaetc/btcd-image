FROM golang:alpine

EXPOSE 8332 8333 8334 18332 18333 18334

RUN mkdir /root/.btcd && \
    mkdir /root/.btcctl && \
    apk --update add git && \
    go get github.com/btcsuite/btcd/... && \
    apk del git && \
    rm -rf /var/cache/apk/*

COPY entry.sh /root/entry.sh

WORKDIR /root

VOLUME ["/root/.btcd", "/root/.btcctl"]

ENTRYPOINT ["sh", "/root/entry.sh"]
