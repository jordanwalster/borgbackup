FROM alpine

# Install SSH & borg CLI
RUN apk update
RUN apk add openssh
RUN apk add borgbackup

# Create host keys to allow SSHD to start
RUN ssh-keygen -A

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/entrypoint.sh"]
