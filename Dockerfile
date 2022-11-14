FROM ubuntu

RUN useradd -s /bin/bash -d /home/stubs -m -G sudo stubs
RUN yes | unminimize
RUN apt update
RUN apt install -y sudo nano vim man curl net-tools ssh unzip less

COPY ./foo.zip /home/stubs/foo.zip
RUN cd /home/stubs && unzip foo.zip && rm foo.zip && rm -r __MACOSX && rm /home/stubs/foo/command-line-aufgaben.pdf
RUN find /home/stubs -name '.DS_Store' -type f -delete
RUN chown stubs -R /home/stubs/foo

ENTRYPOINT ["tail", "-f", "/dev/null"]
