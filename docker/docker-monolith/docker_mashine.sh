docker-machine create \
  --driver generic \
  --generic-ip-address=51.250.92.243 \
  --generic-ssh-user yc-user \
  --generic-ssh-key ~/.ssh/id_rsa \
  docker-host
