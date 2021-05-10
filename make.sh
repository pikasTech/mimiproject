MYROOT=$PWD

#echo copy ../src to $PWD
#cp ../src . -r

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
