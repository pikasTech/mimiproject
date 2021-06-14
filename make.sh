
MYROOT=$PWD

echo link ../src to $PWD
ln -s ../src $PWD/src

echo copy setup/vscode to ../.vscode
cp setup/vscode/* ../.vscode/

cp setup/cmake/package/domake.sh .
sh domake.sh
rm domake.sh

cp setup/cmake/init/domake.sh .
sh domake.sh
rm domake.sh

rm src -rf
