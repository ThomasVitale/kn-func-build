FROM golang:1.18

RUN apt-get -y update && apt-get -y install podman

COPY LICENSE README.md /
COPY src /usr/src/
RUN chmod +x /usr/src/install.sh /usr/src/entrypoint.sh && /usr/src/install.sh

ENTRYPOINT ["/usr/src/entrypoint.sh"]