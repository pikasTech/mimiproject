sh clear.sh
echo link ../src to $PWD
ln -s ../src $PWD/src

echo copy setup/vscode to ../.vscode
cp setup/vscode/c.json.code-snippets ../.vscode/
cd docker && sh build.sh && cd ..
