FROM lantos94/poseidon-garrysmod:latest

# Switch to user steam (make sure)
USER steam
# install css  (note we are already using steamcmd)
RUN  /home/steam/steamcmd/steamcmd.sh +login anonymous +force_install_dir /home/steam/cstrike +app_update 232330 validate +quit

# # # set LD libs
ENV LD_LIBRARY_PATH=/home/steam/garrysmod/bin
# # # set -steamdir /opt/steamcmd
# ENV STEAM_DIR=/opt/steamcmd
# ENV game=garrysmod
# ENV gamemode=sandbox
# ENV ip=${ip}
# ENV map=gm_flatgrass

EXPOSE 27015/tcp
EXPOSE 27015/udp

ENTRYPOINT [ "/home/steam/garrysmod/srcds_run" ]

