FROM cka3o4nik/vpn-proxy:ovpn

RUN apt-get update
RUN apt-get install squid -y
RUN apt-get clean

RUN systemctl enable squid
RUN echo "http_port 8080" >> /etc/squid/squid.conf
EXPOSE 8080
#

ADD squid.conf /etc/squid/

CMD ["bash", "container_start.sh"]
