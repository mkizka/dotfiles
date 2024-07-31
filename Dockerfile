FROM ubuntu:22.04

RUN apt update \
  && apt install -y software-properties-common \
  && apt-add-repository --yes --update ppa:ansible/ansible
RUN apt install -y ansible curl sudo

WORKDIR /ansible
ENV USER=root

COPY . .
RUN ansible-playbook -i hosts playbook.yml

CMD ["fish"]
