FROM chosenken/steam_base
MAINTAINER chosenken@gmail.com

ENV REFRESHEDON 02-17-2015

USER appuser

RUN mkdir ~/left4dead2

ENV GAMEDIR ~/left4dead2
ENV APP_ID 222860

RUN steamcmd.sh +login anonymous +force_install_dir "/home/appuser/$GAMEDIR" +app_update $APP_ID validate +quit


EXPOSE 27015 
