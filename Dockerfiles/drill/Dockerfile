FROM alpine

RUN apk update \
	&& apk add drill \
	&& rm -rf /var/cache/apk/*

ENTRYPOINT ["drill"]
