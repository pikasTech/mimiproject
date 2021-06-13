# get project name
project_path=$(cd ..;pwd)
project_name="${project_path##*/}"

DOCKER_NAME=$project_name

docker run -it --rm \
	--name $DOCKER_NAME \
       	-v "$PWD":/usr/src/myapp \ 
	-w /usr/src/myapp \
	--network host \
	python:3.7 \
	python tcpDemo_server.py

MYROOT=$PWD

echo link ../src to $PWD
ln -s ../src src

echo copy setup/vscode to ../.vscode
cp setup/vscode/* ../.vscode/

cp setup/cmake/package/domake.sh .
sh domake.sh
rm domake.sh

cp setup/cmake/init/domake.sh .
sh domake.sh
rm domake.sh

rm src -rf
