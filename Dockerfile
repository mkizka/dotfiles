FROM ubuntu:22.04

RUN apt update && apt install -y curl sudo

RUN useradd --create-home --groups sudo dotfile \
  && echo "dotfile ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
USER dotfile

WORKDIR /ansible
COPY ./install .
RUN ./install

CMD ["fish"]
