# get project name
project_path=$(cd ..;pwd)
project_name="${project_path##*/}"

DOCKER_NAME=$project_name

docker exec -it $DOCKER_NAME sh make.sh


