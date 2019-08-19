FROM ubuntu:disco

RUN apt-get update && apt-get upgrade -y && apt-get install -y apt-utils gcc \
    g++ cmake build-essential

RUN apt-get update && apt-get upgrade -y && apt-get install -y libboost-all-dev

ADD . /code/
WORKDIR /code/

CMD ["/code/build_and_run.sh"]
