FROM ubuntu:16.04
MAINTAINER Palanivel Manickam <palanivelmks@@gmail.com>
RUN apt-get update -y && apt-get install -y apt-transport-https && apt-get install wget curl vim git jq -y 
WORKDIR /root/
ADD ./palani.sh /root/
RUN chmod +x /root/palani.sh
ENTRYPOINT while true; do sleep 1; done

