# docker-jenkins
Get version 2.109 of jenkins

## Quick Start
```docker run -ti -p 8080:8080 scorpion2272/docker-jenkins```
Then open http://localhost:8080, you can see jenkins web interface

## Specify data volume
```docker run -ti -d -p 8080:8080 -v <your data volume path>:/jenkins scorpion2272/docker-jenkins```
