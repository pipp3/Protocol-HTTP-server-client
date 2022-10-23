FROM    mhart/alpine-node
RUN     apk update && apk upgrade --available
RUN     npm install -g http-server
WORKDIR /tarea2
ADD     ./    /tarea2/
COPY    www /www/
COPY    app.py app.py
EXPOSE  8080
ENTRYPOINT [ "http-server", "--cors", "-p8080","/tarea2/www" ]
