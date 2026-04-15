#!/bin/sh

# install dotnet
curl -sSL https://dot.net/v1/dotnet-install.sh > dotnet-install.sh
chmod +x dotnet-install.sh

./dotnet-install.sh -c 10.0 -InstallDir ./dotnet
./dotnet/dotnet --version
./dotnet/dotnet workload install wasm-tools

# publish project
./dotnet/dotnet publish src/FridgeMagnet.Web/FridgeMagnet.Web.csproj -c Release -o public