yc compute instance create \
  --name works-node \
  --zone ru-central1-b \
  --network-interface subnet-name=default-ru-central1-b,nat-ip-version=ipv4 \
  --create-boot-disk image-folder-id=standard-images,image-family=ubuntu-1804-lts,size=40 \
  --memory=4G \
  --cores=4 \
  --ssh-key ~/.ssh/id_rsa.pub
