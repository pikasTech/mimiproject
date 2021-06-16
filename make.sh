MYROOT=$PWD

echo link ../src to $PWD
ln -s ../src $PWD/src

echo copy setup/vscode to ../.vscode
cp setup/vscode/* ../.vscode/

cp setup/cmake/package/domake.sh .
sh domake.sh
rm domake.sh

cp setup/cmake/boot/domake.sh .
sh domake.sh
rm domake.sh

cp setup/cmake/test/domake.sh .
sh domake.sh
rm domake.sh

rm src -rf
rm CMakeLists.txt -rf

echo remove includ/
rm include -rf

cd test
for testbin in $(ls)
do
	./$testbin
done
cd $MYROOT
