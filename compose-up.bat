wsl -d docker-desktop
sysctl -w vm.max_map_count=262144 && exit

docker compose -f docker-compose.yml up

