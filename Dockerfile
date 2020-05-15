FROM gcr.io/bitnami-containers/minideb-extras:jessie-r14
WORKDIR /app
COPY . .
USER docker
EXPOSE 3000
ENTRYPOINT ["/app/"]
