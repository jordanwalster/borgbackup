# borgbackup

This repository contains the `Dockerfile` and `docker-compose.yml` files for running borg in a docker container. 

## Usage

To use this container, run the supplied  `docker-compose.yml` and substitute the `SSH_PASSWORD` environment variable for one of your choice (This is not your borg passphrase that is used to encrypt your backup).

### Create your first repository

Create your first repository against the container using:

```
borg init -e repokey borg@[IP]:/opt/borg/<repository name>
```

If you have selected another port other than 22, you can change the port used by borg by running `export BORG_RSH="ssh -p <port>"` on the client running the backup command.

From here you should follow the usage documentation provided on [borgbackup.readthedocs.io](https://borgbackup.readthedocs.io/en/stable/usage/general.html).

### DISCLAIMER: MAKE SURE TO STORE YOUR PASSPHRASE IN A SECURE LOCATION. IF IT IS LOST, YOUR BACKUPS WILL BECOME UNRECOVERABLE.
