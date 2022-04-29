#!/bin/bash
k3d cluster create kb -s 1 -a 3 --api-port 6550 -p "80:80@loadbalancer" --k3s-arg "--disable=traefik@servers:*" --registry-create registry
echo "registry running at port:$(docker ps -f name=registry --format={{.Ports}})" 
