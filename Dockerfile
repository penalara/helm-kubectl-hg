FROM dtzar/helm-kubectl:3.8.2

RUN apk -U upgrade \
    && apk add --no-cache mercurial

CMD bash