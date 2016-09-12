docker build -t dns . &&\
docker run -d --name dns -p 53:53/tcp -p 53:53/udp --cap-add=NET_ADMIN firesh/dns --log-facility=-
