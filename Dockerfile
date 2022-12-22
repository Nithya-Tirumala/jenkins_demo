FROM ubuntu:latest

RUN apt-get update && apt-get install -y nginx:latest

RUN mkdir fun/

WORKDIR fun

ADD Java.java .

RUN pwd

CMD ["bash"]

COPY README.md .

RUN cat README.md > "Persistent"

EXPOSE 8081
