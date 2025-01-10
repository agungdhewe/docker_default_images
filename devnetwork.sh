# rename iface (cek dengan ifconfig, kalau belum ada iface tersebut, buat dulu dengan docker network create, tanpa --opt com.docker.network.bridge.name=devnetwork)
sudo ip link set br-7febb16ca8cc name devnetwork


# create network using iface
docker network create --driver=bridge --subnet=192.168.15.0/24 --gateway=192.168.15.1 --opt com.docker.network.bridge.name=devnetwork devnetwork

