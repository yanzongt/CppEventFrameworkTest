FROM debian:10

# this is for base env
RUN apt update && apt install -y build-essential cmake

#this is for gtest env
RUN apt update && apt install -y libgtest-dev
RUN cd /usr/src/googletest && cmake . && make && make install