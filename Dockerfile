FROM node:6.11

ENV DEBIAN_FRONTEND noninteractive
ENV WINEARCH win32

RUN apt-get update
RUN apt-get install -y --no-install-recommends apt-transport-https
RUN dpkg --add-architecture i386
RUN wget -nc https://dl.winehq.org/wine-builds/Release.key
RUN apt-key add Release.key
RUN echo "deb https://dl.winehq.org/wine-builds/debian/ jessie main" >> /etc/apt/sources.list
RUN apt-get update
RUN apt-get install -y winehq-stable
RUN wget https://raw.githubusercontent.com/Winetricks/winetricks/master/src/winetricks && chmod +x winetricks && mv winetricks /usr/local/bin

RUN apt-get install -y --no-install-recommends xvfb xauth

RUN winecfg && xvfb-run -a winetricks -q dotnet20
