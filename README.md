# telegrammer-bot-template

## This is template repository of Telegrammer based Telegram bot application.

---------------

### Usage with Docker

1. Install Docker https://docs.docker.com/install/ and docker-compose https://docs.docker.com/compose/install/
2. 
```
$ cd telegrammer-bot-template
$ docker build -t telegrammer-bot-template .
```
3. Put your Telegram Bot token to docker-compose.yml as the env var TELEGRAM_BOT_TOKEN
4. Run docker-compose 
```
$ docker-compose up
```
