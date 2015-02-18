FROM chosenken/steamcmd_base
MAINTAINER chosenken@gmail.com

ENV REFRESHEDON 02-17-2015

USER appuser
ENV GAME left4dead2
ENV APP_ID 222860
ENV GAMEDIR /home/appuser/$GAME
RUN mkdir $GAMEDIR

RUN steamcmd.sh +login anonymous +force_install_dir "/home/appuser/$GAMEDIR" +app_update $APP_ID validate +quit
