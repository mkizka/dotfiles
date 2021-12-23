FROM ubuntu
RUN apt update && apt install -y curl
COPY ./install .
RUN chmod +x ./install && ./install
