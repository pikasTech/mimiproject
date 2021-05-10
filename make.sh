echo copy ../src to $PWD
cp ../src . -r

echo copy setup/vscode to ../.vscode
cp setup/vscode/* ../.vscode/

cp setup/cmake/package/domake.sh .
sh domake.sh
rm domake.sh

cp setup/cmake/init/domake.sh .
sh domake.sh
rm domake.sh
