# membuat volume baru
docker volume create mongodata

# membuat container dan menyambungkan dengan volume
docker container create --name mongovolume --mount "type=volume,source=mongodata,destination=/data/db" --publish 27019:27017 --env MONGO_INITDB_ROOT_USERNAME=finma --env MONGO_INITDB_ROOT_PASSWORD=finma mongo:latest