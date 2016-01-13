### About

Apache + PHP with useful tools (blackfire, composer)

### Tags

-	[`jessie`, `latest` (Dockerfile)](https://github.com/iamluc/dockerfiles/blob/master/symfony/Dockerfile)
-	[`7.0` (Dockerfile)](https://github.com/iamluc/dockerfiles/blob/master/symfony/7.0/Dockerfile)

### Usage

In CLI

```sh
docker run -v `pwd`:/var/www/html -p 80:80 iamluc/symfony
```

With docker-compose

```yml
app:
    image: iamluc/symfony
    volumes:
        - .:/var/www/html
    ports:
        # Adapt to you need
        - 80:80

    # You will have to export env variables (BLACKFIRE_SERVER_ID BLACKFIRE_SERVER_TOKEN)
    # before running docker-compose. Or comment lines below
    links:
        - blackfire:blackfire

blackfire:
    image: blackfire/blackfire
    environment:
        - BLACKFIRE_SERVER_ID
        - BLACKFIRE_SERVER_TOKEN
```

### Build

docker build -t iamluc/symfony .
