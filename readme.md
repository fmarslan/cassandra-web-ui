This is a docker image to [cassandra-web](https://github.com/avalanche123/cassandra-web)

## Environments
* CASSANDRA_HOST *(default : 127.0.0.1)*
* CASSANDRA_PORT *(default : 9042)*
* CASSANDRA_USERNAME *(default : cassandra)*
* CASSANDRA_PASSWORD *(default : cassandra)*
* WEB_UI_PORT *(default : 80)*


## Quick Run Command
```batch
$ docker run --name CassandraWebUI -d fmarslan/cassandra-web-ui:latest
```

Or 

```batch
$ docker run --name CassandraWebUI -d CASSANDRA_USERNAME=user -e CASSANDRA_PASSWORD=pass fmarslan/cassandra-web-ui:latest
```


## Sample Run Command
```batch
$ docker run --name CassandraWebUI -d -e CASSANDRA_HOST=10.43.43.43 -p 80:8080 -e CASSANDRA_USERNAME=user -e CASSANDRA_PASSWORD=pass fmarslan/cassandra-web-ui:latest
```

## YAML File

```YML
version: '2'
services:
    web-ui:
        image: fmarslan/cassandra-web-ui:latest
        expose:
            - "80"
        environment:
            - CASSANDRA_HOST=172.19.0.2
            - CASSANDRA_USER=cassandra
            - CASSANDRA_PASSWORD=cassandra
            - WEB_UI_PORT=80
        restart: always
```
