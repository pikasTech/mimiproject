echo copy ../src to $PWD
cp ../src . -r

cp setup/cmake/package/domake.sh .
sh domake.sh
rm domake.sh

cp setup/cmake/init/domake.sh .
sh domake.sh
rm domake.sh
