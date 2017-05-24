FROM java:8

#Install node
RUN curl -sL https://deb.nodesource.com/setup_6.x | bash -
RUN apt-get install -y nodejs

#Install XVFB display
RUN apt-get -y install xvfb gtk2-engines-pixbuf
ENV DISPLAY=:0

#Install latest firefox
RUN wget -q -O - http://mozilla.debian.net/archive.asc | apt-key add -
RUN echo "deb http://mozilla.debian.net/ jessie-backports firefox-release" | tee -a /etc/apt/sources.list
RUN apt-get update
RUN apt-get -y install firefox
RUN echo firefox -v
