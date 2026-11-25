#!/bin/bash

# First I need to stop and rm previous container
docker stop cafeweb
docker rm cafesite

#next I need to pull latest image from dockerhub
docker pull panoramicsunroof1/cafeweb:


#next i need to start a new container using that new image
docker run -d --name cafeweb -p 8080:80 --restart unless-stopped panoramicsunroof1/cafeweb:latest  