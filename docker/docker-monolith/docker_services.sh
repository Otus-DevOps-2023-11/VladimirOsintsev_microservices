docker kill $(docker ps -q)
docker run -d --network=reddit --network-alias=post_db --network-alias=comment_db -v reddit_db:/data/db  mongo:4
docker run -d --network=reddit --network-alias=post wowan/post:1.0
docker run -d --network=reddit --network-alias=comment wowan/comment:1.0
docker run -d --network=reddit -p 9292:9292 wowan/ui:2.0
