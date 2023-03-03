FROM golang:1.18

RUN apt-get -y update && apt-get -y install podman
WORKDIR /usr/local/
COPY LICENSE README.md /
COPY src src/
RUN chmod +x src/install.sh src/entrypoint.sh && src/install.sh

ENTRYPOINT ["src/entrypoint.sh"]