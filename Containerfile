FROM quay.io/centos/centos:stream
RUN dnf -y install frr socat
RUN sed -i 's/^bgpd=no/bgpd=yes/' /etc/frr/daemons
RUN sed -i 's/^bfdd=no/bfdd=yes/' /etc/frr/daemons
CMD [ "/sbin/init" ]
