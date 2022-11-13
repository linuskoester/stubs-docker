FROM ubuntu

RUN useradd -s /bin/bash -d /home/stubs -m -G sudo stubs
RUN yes | unminimize
RUN apt update
RUN apt install -y sudo nano vim man curl net-tools ssh

ENTRYPOINT ["su stubs"]
