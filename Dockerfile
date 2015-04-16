FROM debian:jessie
MAINTAINER Matthias Grüter <matthias@grueter.name>

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && \
    apt-get install -y iperf && \
    apt-get clean

EXPOSE 5001
ENTRYPOINT ["iperf"]
CMD ["-c", "target"]
