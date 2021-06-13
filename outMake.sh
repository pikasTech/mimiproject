# get project name
project_path=$(cd ..;pwd)
project_name="${project_path##*/}"

DOCKER_NAME=$project_name

docker run -it --rm \
       	-v "$PWD/../":/root/dev/$DOCKER_NAME \
	-w /root/dev/$DOCKER_NAME/mimiproject \
	$DOCKER_NAME \
	sh make.sh


