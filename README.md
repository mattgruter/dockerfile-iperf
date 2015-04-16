# Test container network performance with ipref

Easily measure maximum bandwidth with [iperf](https://iperf.fr/):

1. Starting the server in the first container

        docker run -d --name iperf mattgruter/iperf -s

1. Measuring network bandwidth towards first container

        docker run --link iperf:target mattgruter/iperf
