# node_supervisor
A small sheet showing how to use supervisor in docker.

## How to use?
After running the container with command like this `docker run  -d -p 8082:80 --name node_supervisor rsabir/node:v1`, you can then access to the server `http://IP_SERVER:8082`. This prove that supervisor had succeed at launching node.

You can then test killing the app by accessing `http://IP_SERVER:8082/kill`, you will then see that the container is closed. This means that supervisor succeeded at recognising that the app was shut and then killed all his processes.
