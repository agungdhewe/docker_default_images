FROM postgres:16.3-bullseye
ENV TERM=xterm-256color

RUN echo "Asia/Jakarta" > /etc/timezone && dpkg-reconfigure -f noninteractive tzdata

RUN apt-get update 
RUN apt-get install -y mcrypt
RUN apt-get install -y nano 
RUN apt-get install -y inetutils-ping
RUN apt-get install -y nmap
RUN apt-get install -y telnet


COPY .bashrc /root/.bashrc

EXPOSE 5432