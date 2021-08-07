FROM ubuntu:21.10

WORKDIR /home/user
RUN touch /home/user/hello.txt

RUN apt-get update

ENV TZ=Asia/Tokyo

RUN apt-get install tzdata -y
RUN apt-get install python3 python3-pip python3-cryptography less libxext6 libxrender1 libxtst6 libfreetype6 libxi6 -y
RUN python3 -m pip install -U pip
RUN export PATH=$PATH:/root/.local/bin
RUN pip3 install projector-installer --user

RUN . ~/.profile

RUN groupadd user

#RUN /root/.local/bin/projector install -y


CMD ["/root/.local/bin/projector"]