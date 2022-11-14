FROM ubuntu

RUN useradd -s /bin/bash -d /home/stubs -m -G sudo stubs
RUN yes | unminimize
RUN apt update
RUN apt install -y sudo nano vim man curl net-tools ssh unzip

COPY ./foo.zip /home/stubs/foo.zip
RUN cd /home/stubs && unzip foo.zip && rm foo.zip && rm -r __MACOSX && rm /home/stubs/foo/command-line-aufgaben.pdf && rm /home/stubs/foo/.DS_Store

ENTRYPOINT ["tail", "-f", "/dev/null"]
