# get project name
project_path=$(cd ../..;pwd)
project_name="${project_path##*/}"

DOCKER_NAME=$project_name

docker rmi -f $DOCKER_NAME 
docker rm -f $DOCKER_NAME
docker build -t $DOCKER_NAME . 


docker run -itd \
	--name $DOCKER_NAME \
	-v $PWD/../../:/root/dev/$DOCKER_NAME\
	-v /tmp/.X11-unix:/tmp/.X11-unix \
	-e DISPLAY \
	-w /root/dev/$DOCKER_NAME/mimiproject \
	--restart=always \
	$DOCKER_NAME \
	bash
