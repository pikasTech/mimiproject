MYROOT=$PWD

cp setup/cmake/package/domake.sh .
bash domake.sh
rm domake.sh

cp setup/cmake/boot/domake.sh .
bash domake.sh
rm domake.sh

cp setup/cmake/test/domake.sh .
bash domake.sh
rm domake.sh

rm CMakeLists.txt -rf

echo remove includ/
rm include -rf

cd test
for testbin in $(ls)
do
	./$testbin
done
cd $MYROOT
