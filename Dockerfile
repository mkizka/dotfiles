FROM ubuntu:22.04

RUN apt update \
  && apt install -y software-properties-common \
  && apt-add-repository --yes --update ppa:ansible/ansible \
  && apt install -y ansible sudo

WORKDIR /ansible
COPY . .
RUN ansible-playbook -i hosts.yml playbook.yml

CMD ["fish"]
