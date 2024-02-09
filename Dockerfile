FROM mcr.microsoft.com/dotnet/sdk AS build-env
WORKDIR /app
#ENV name

RUN apt-get update && apt-get dist-upgrade -y && apt-get install -y default-jre
RUN dotnet tool install --global dotnet-sonarscanner
RUN dotnet tool install --global dotnet-coverage
ENV PATH="$PATH:/root/.dotnet/tools"