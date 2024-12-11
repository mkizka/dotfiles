FROM ubuntu:22.04

RUN apt update && apt install -y curl sudo

RUN useradd --create-home --groups sudo docker \
  && echo "docker ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

USER docker
WORKDIR /home/docker

COPY --chown=docker:sudo home ./.local/share/chezmoi
RUN sh -c "$(curl -fsLS get.chezmoi.io/lb)" -- init --apply

CMD ["/home/linuxbrew/.linuxbrew/bin/fish"]
