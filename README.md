# elasticsearch_docker
A Docker Compose environment for running Elastic Stack

## Launching the Docker-compose environment
On Linux, ElasticSearch requires vm.max_map_count to be set.
Use the compose-up.sh script which handles this.

On Windows you have to manually open the Windows System for Linux and execute the command there.
It doesn't seem to be possible to batch script this because of the context switch between Windows prompt, bash prompt and back again.

#### So on Windows, run the following at the command prompt line by line (copy-paste of the whole block won't work)

wsl -d docker-desktop
sysctl -w vm.max_map_count=262144
exit
docker compose -f docker-compose.yml up -d

