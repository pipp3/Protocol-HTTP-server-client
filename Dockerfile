FROM    mhart/alpine-node
RUN     sudo apk update && apk upgrade --available
RUN     sudo npm install -g http-server
RUN     sudo apt-get install -y python
WORKDIR /tarea2
ADD     ./    /tarea2/
COPY    www /www
COPY    app.py app.py
EXPOSE  8080
ENTRYPOINT [ "http-server", "--cors", "-p8080","/tarea2/www" ]
