FROM ubuntu:16.04
MAINTAINER Palanivel Manickam <palanivelmks@@gmail.com>
RUN apt-get update -y && apt-get install -y apt-transport-https && apt-get install wget curl vim git jq -y 
WORKDIR /root/
COPY ./find.sh /root/
RUN chmod +x /root/find.sh
CMD sh /root/find.sh
