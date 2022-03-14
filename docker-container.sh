# melihat semua container
docker container ls -a

# melihat container yang sedang berjalan
docker container ls

# membuat container baru
docker container create --name <container-name> <image>:<tag>

# menjalankan container
docker container start <container-name>

# menghentikan container
docker container stop <container-name>

# menghapus container 
docker container rm <container-name>
