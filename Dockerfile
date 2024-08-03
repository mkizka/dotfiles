FROM ubuntu:22.04

RUN apt update \
  && apt install -y software-properties-common \
  && apt-add-repository --yes --update ppa:ansible/ansible
RUN apt install -y ansible curl sudo

WORKDIR /ansible
RUN useradd --create-home --groups sudo dotfile \
  && echo "dotfile ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
USER dotfile 

COPY . .
RUN ansible-playbook -i localhost, -c local playbook.yml

CMD ["fish"]
