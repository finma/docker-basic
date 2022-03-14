# melihat list network
docker network ls

# membuat network baru
# docker network create --driver <driver-name> <network-name>
docker network create --driver bridge contohbridge

# menghapus network
docker network rm <network-name>
