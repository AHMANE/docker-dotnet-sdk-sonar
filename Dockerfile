FROM mcr.microsoft.com/dotnet/core/sdk:3.1.101
LABEL AHMANE Hafid <hahmane@sii.fr>
LABEL version="3.1"

# Install the java runtime environment 8
RUN apt-get update && apt-get install openjdk-12-jre -y
#RUN apt-get -q update && apt-get -y -q install --no-install-recommends -t stretch-backports openjdk-11-jdk

# Install the sonar scanner for .netCore
RUN dotnet tool install --global dotnet-sonarscanner --version 4.8.0

# Install the coverlet console
RUN dotnet tool install --global coverlet.console

ENV PATH="/root/.dotnet/tools:${PATH}"