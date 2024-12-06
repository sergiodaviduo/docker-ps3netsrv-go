FROM ubuntu:24.04

# setup and install dependencies

RUN apt-get -y update \
 && apt-get -y install wget \
 && mkdir /home/temp \
 && mkdir /usr/local/ps3netsrv-go \
 && wget -P /home/temp https://go.dev/dl/go1.23.3.linux-amd64.tar.gz \
 && wget -P /home/temp https://github.com/xakep666/ps3netsrv-go/releases/download/v0.0.7/ps3netsrv-go_Linux_x86_64.tar.gz \
 && tar -C /usr/local -xzf /home/temp/go1.23.3.linux-amd64.tar.gz \
 && tar -C /usr/local/ps3netsrv-go -xzf /home/temp/ps3netsrv-go_Linux_x86_64.tar.gz \
 && rm -rf /home/temp

WORKDIR "/ps3games/"

ENV PATH="$PATH:/usr/local/go/bin:/usr/local/ps3netsrv-go"

ENTRYPOINT ["/usr/local/ps3netsrv-go/ps3netsrv-go", "server", "--root=/ps3games/"]