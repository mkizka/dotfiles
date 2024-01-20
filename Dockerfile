FROM ubuntu
RUN apt update && apt install -y curl
COPY ./install .
ENV USER root
RUN chmod +x ./install && ./install
CMD ["fish"]
