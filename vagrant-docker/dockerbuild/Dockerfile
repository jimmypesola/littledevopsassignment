FROM httpd:2.4
COPY ./public-html/ /usr/local/apache2/htdocs/

MAINTAINER Jimmy Pesola <jimmy@pesola.eu>

# Install OpenSSH
RUN apt-get update && apt-get install -y openssh-server
RUN mkdir /var/run/sshd

RUN useradd -m administrator
RUN adduser administrator sudo
RUN su - administrator && echo administrator:thisisalongtestpassword | chpasswd && \
 mkdir /home/administrator/.ssh/ && chown administrator:administrator /home/administrator/.ssh

ADD ./scripts/start.sh /start.sh
ADD ./public-keys/id_rsa.pub /home/administrator/.ssh/id_rsa.pub

RUN cat /home/administrator/.ssh/id_rsa.pub > /home/administrator/.ssh/authorized_keys
RUN rm /home/administrator/.ssh/id_rsa.pub
RUN chown administrator:administrator /home/administrator/.ssh/authorized_keys
RUN chmod go-rwx /home/administrator/.ssh

#EXPOSE 22 80 443
CMD ["/bin/sh", "/start.sh"]
