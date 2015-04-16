# Network bandwidth testing with ipref

Easily measure maximum bandwidth with [iperf](https://iperf.fr/):

1. Start the server in the first container

        docker run -d --name iperf mattgruter/iperf -s

1. Measure network bandwidth towards first container

        docker run --link iperf:target mattgruter/iperf

Or:
Measure network bandwidth towards known host

        docker run mattgruter/iperf -c <IP>
