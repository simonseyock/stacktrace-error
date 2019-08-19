FROM ubuntu:disco

########################################################
# Essential packages for remote debugging and login in
########################################################

RUN apt-get update && apt-get upgrade -y && apt-get install -y apt-utils gcc \
    g++ cmake build-essential

# Taken from - https://docs.docker.com/engine/examples/running_ssh_service/#environment-variables

########################################################
# Add custom packages and development environment here
########################################################

RUN apt-get update && apt-get upgrade -y && apt-get install -y libboost-all-dev

ADD . /code/
WORKDIR /code/

########################################################

CMD ["/code/build_and_run.sh"]
