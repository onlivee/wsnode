FROM node:20-alpine3.20

WORKDIR /app

COPY nav.js nav.html package.json ./

EXPOSE 7860

RUN apk update && apk add --no-cache bash openssl curl &&\
    chmod +x nav.js &&\
    npm install

CMD ["node", "nav.js"]
