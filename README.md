This is my home server docker setup!

Included is a whole bunch of different services, mainly for media consumption but also some game servers and personal deployments. 
All active services are configured in docker-compose-server.yml

The docker network is setup behind Traefik2 and requires automatic generation of an acme.json file within /appdata/traefik2/acme/acme.json to correctly load SSL certs

Check out the .env.example for some other secrets that are used by varying services. 

To run, call:
```
docker compose -f docker-compose-server.yml up -d
```

Each service has been configured under a separate domain name. For example, 
logs.domain.com
portainer.domain.com
etc
