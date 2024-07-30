FROM ubuntu:22.04

RUN apt update -qq \
  && apt install -y -qq software-properties-common \
  && apt-add-repository --yes --update ppa:ansible/ansible \
  && apt install -y -qq ansible sudo

WORKDIR /ansible
COPY . .
RUN ansible-playbook -i hosts.yml playbook.yml

CMD ["fish"]
