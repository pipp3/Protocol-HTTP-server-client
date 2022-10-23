###

FROM    mhart/alpine-node
RUN     apk update && apk upgrade --available
RUN     npm install -g http-server
RUN     apk add --update python3
WORKDIR /tarea2
ADD     ./    /tarea2/
COPY    app.py app.py
COPY    www /www/
EXPOSE  8080
CMD [ "http-server", "--cors", "-p8080","/tarea2/www" ]

