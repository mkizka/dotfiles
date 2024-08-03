FROM ubuntu:22.04

RUN apt update && apt install -y curl sudo

RUN useradd --create-home --groups sudo docker \
  && echo "docker ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

USER docker
WORKDIR /home/docker

# ファイル変更時に再実行されるように、install内のgit cloneではなくCOPYを使う
COPY . ./dotfiles
RUN ./dotfiles/install

CMD ["fish"]
