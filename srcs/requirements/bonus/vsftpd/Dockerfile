FROM debian:buster

ARG FTP_USER=ftphafid
ARG FTP_PASS=ftppass

RUN apt-get update && yes | apt-get install vsftpd vim 

RUN mkdir -p /var/run/vsftpd/empty

RUN useradd -m -p 1234  ${FTP_USER}
RUN echo ${FTP_USER}:${FTP_PASS} | /usr/sbin/chpasswd

COPY ./conf/vsftpd.conf .

RUN cat vsftpd.conf > /etc/vsftpd.conf

WORKDIR /var/www/wordpress

EXPOSE 21

CMD ["/usr/sbin/vsftpd" , "/etc/vsftpd.conf"]