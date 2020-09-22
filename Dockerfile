FROM nvidia/cuda:9.2-base
ADD . /nanoflann/
WORKDIR /nanoflann/
RUN apt-get update && apt-get install -y cmake g++ && \
mkdir build && mkdir ../install
WORKDIR /nanoflann/build
RUN cmake .. && make && cmake -DCMAKE_INSTALL_PREFIX=/nanoflann/install -P cmake_install.cmake
#MKDIR build
#WORKDIR build
