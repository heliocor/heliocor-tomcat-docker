FROM tomcat:8.5.38
RUN rm -rf /usr/local/tomcat/*
RUN apt-get update
RUN apt-get -y install python3
RUN apt-get -y install python3-pip
RUN apt-get -y install liblept5
RUN apt-get -y install libgomp1
RUN pip3 install awscli --upgrade --user
RUN echo "deb http://deb.debian.org/debian stretch-backports main contrib non-free" > /etc/apt/sources.list
RUN apt-get update
RUN apt-get -y install tesseract-ocr
RUN apt-get -y install tesseract-ocr-eng
RUN apt-get -y install tesseract-ocr-spa
RUN apt-get -y install tesseract-ocr-chi-sim
RUN apt-get -y install wget
RUN mkdir /var/lib/dokstor
RUN mkdir ~/.aws/
RUN export PATH=~/.local/bin:$PATH
VOLUME /usr/local/tomcat
