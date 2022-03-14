# menghentikan container yang akan dibackup
docker container stop mongovolume

# menjalankan perintah backup
docker container run --rm --name ubuntubackup --mount "type=bind,source=F:/Code/Docker/backup,destination=/backup" --mount "type=volume,source=mongodata,destination=/data" ubuntu:latest tar cvf /backup/backup.tar.gz /data

# membuat container baru dengan volume yang sudah direstore
docker container create --name mongorestore --mount "type=volume,source=mongorestore,destination=/data/db" --publish 27020:27017 --env MONGO_INITDB_ROOT_USERNAME=finma --env MONGO_INITDB_ROOT_PASSWORD=finma mongo:latest
