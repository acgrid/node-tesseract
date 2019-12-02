FROM alpine
ENV TERM=linux
RUN apk add tesseract-ocr
RUN apk add nodejs-lts
RUN apk add npm
RUN apk add yarn --repository=http://dl-cdn.alpinelinux.org/alpine/edge/community
RUN yarn config set registry https://registry.npm.taobao.org/
RUN yarn add global node-tesr
CMD tail -f /dev/null
