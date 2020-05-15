FROM gcr.io/bitnami-containers/minideb-extras:jessie-r14
WORKDIR /home/andrejuk/1
COPY . .
USER docker
EXPOSE 3000
ENTRYPOINT ["/app/"]
