FROM ubuntu
RUN apt update && apt install -y curl
COPY . /root/dotfiles/
ENV USER root
RUN /root/dotfiles/install
CMD ["fish"]
