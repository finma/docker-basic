# menjalankan image pada host dengan cara port forwarding
# contoh menggunakan nginx

# mendownload nginx
docker image pull nginx:latest

# membuat container nginx dan port forwarding
# docker container create --name <container-name> --publish <port-host>:<port-image> <image-name>:<tag>
docker container create --name contohnginx --publish 8080:80 nginx:latest

