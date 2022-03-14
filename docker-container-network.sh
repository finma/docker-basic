# membuat network baru
docker network create --driver bridge mongonetwork

# membuat container baru dan mengconnectkan dengan network
# docker container create --name <container-name> --network <network-name>
docker container create --name mongodb --network mongonetwork --env MONGO_INITDB_ROOT_USERNAME=finma --env MONGO_INITDB_ROOT_PASSWORD=finma mongo:latest

# mongodb://<user>:<password>@<container-name>:<container-port>
docker container create --name mongodbexpress --network mongonetwork --publish 8081:8081 --env ME_CONFIG_MONGODB_URL="mongodb://finma:finma@mongodb:27017" mongo-express:latest

# menjalankan container
docker container start mongodb

docker container start mongodbexpress

# disconnect container dari network
# docker network disconnect <network-name> <container-name>
docker network disconnect mongonetwork mongodb

# connect container dari network
# docker network connect <network-name> <container-name>
docker network connect mongonetwork mongodb
