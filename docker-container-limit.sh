# melimit penggunaan resource pada host
# docker container create --name <container-name> --memory <number><b|k|m|g> --cpus <number> <image>:<tag>
docker container create --name smallnginx --memory 100m --cpus 0.5 --publish 8081:80 nginx:latest
