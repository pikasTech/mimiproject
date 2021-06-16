echo copy setup/vscode to ../.vscode
cp setup/vscode/* ../.vscode/
cd docker && sh build.sh && cd ..
