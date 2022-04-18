FROM ubuntu:21.04

WORKDIR /data/
COPY entrypoint.sh /usr/local/bin/

RUN apt-get update && apt-get install wget unzip -y
RUN wget https://minecraft.azureedge.net/bin-linux/bedrock-server-1.18.12.01.zip
RUN unzip bedrock-server-1.18.12.01.zip
RUN rm bedrock-server-1.18.12.01.zip && apt clean
RUN chmod +x /data/bedrock_server
RUN chmod +x /usr/local/bin/entrypoint.sh

EXPOSE 19132/udp
VOLUME /data/

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
CMD ["/data/bedrock_server"]