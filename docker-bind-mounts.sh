# membuat container dan bisa melakukan sharing file atau folder dari host ke container
# docker container create --name <container-name> --mount <type,source,destination,readonly[optional]> <other arguments>

docker container create --name mongodata --mount "type=bind,source=/f/Code/Docker/mongodata,destination=/data/db" --publish 27018:27017 --env MONGO_INITDB_ROOT_USERNAME=finma --env MONGO_INITDB_ROOT_PASSWORD=finma mongo:latest