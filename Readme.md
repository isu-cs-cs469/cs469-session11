# Docker Configurations for Session 11

This repository contains two directories, [ex00](./ex00) and [ex01](./ex01)
containing docker configuration for two simple networks that we will go through
during the live session.

## Exercise 0

The first exercise defines a simple star topology made of three hosts connected
to the same network. We will use these hosts to explore the basics of
communication between hosts on the same network, include ARP, IP, and ICMP.

## Exercise 1

The second exercise defines a slightly bigger topology with a client trying to
connect to a server. However, the client and the server are on different
sub-networks and thus need a router in between them to be able to communicate.
We will use tools such `ip`, `tcpdump`, and `wireshark` to examine the traffic
on the network.

## Docker Cheat-sheet

Recall the following docker commands and their aliases:

1. `docker compose up -d`: Bring up the docker environment and detach from it.
   The alias for this one is `dcupd`.

2. `docker compose down`: Bring down the docker environment. The alias is
   `dcdn`.

3. `docker container exec -it <name> <cmd>`: Execute the `<cmd>` command on the
   container `<name>` in interactive mode. Typically use `docker container exec
   -it <name> bash` to grab a shell on the container. The alias for this one is
   `dxcit <name> <cmd>`.

4. `docker logs`: View the logs from the containers. Use `docker logs -f` to
   follow the logs. The alias is `dcl`.

