FROM mcr.microsoft.com/dotnet/core/sdk:3.1
LABEL AHMANE Hafid <hahmane@sii.fr>
LABEL version="3.1"

# Install the java runtime environment 8
RUN apt-get update && apt-get install openjdk-8-jre -y

# Install the sonar scanner for .netCore
RUN dotnet tool install --global dotnet-sonarscanner --version 4.3.1

# Install the coverlet console
RUN dotnet tool install --global coverlet.console

ENV PATH="/root/.dotnet/tools:${PATH}"