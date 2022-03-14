# membuat volume baru
docker volume create mongorestore

# melakukan restore
docker container run --rm --name ubunturestore --mount "type=bind,source=F:/Code/Docker/backup,destination=/backup" --mount "type=volume,source=mongorestore,destination=/data" ubuntu:latest bash -c "cd /data && tar xvf /backup/backup.tar.gz --strip 1"
