docker build -t firesh/dns . &&\
docker run -d --restart=always --name dns -p 53:53/tcp -p 53:53/udp --cap-add=NET_ADMIN firesh/dns --log-facility=-
