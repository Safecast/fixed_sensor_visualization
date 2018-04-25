#
# Build container image
#
# $ docker build .
#
# Run image
#
# $ docker run -it -v `pwd`:/src <container ID>
#
# or you could invoke 'make' directly
#
# $ docker run -v `pwd`:/src <container ID> make view

FROM ubuntu:xenial

RUN apt-get update -y && apt-get install -y git gnuplot libdatetime-format-iso8601-perl make tzdata wget

RUN mkdir /src
WORKDIR /src

CMD ["/bin/bash"]
