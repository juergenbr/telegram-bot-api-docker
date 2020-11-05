# telegram-bot-api-docker

## Description
Docker image based on Ubuntu 20.04 running the official Telegram Bot API. Can be used to host bots locally.
Setup Commands created via Telegram Bot Build instructions generator:
https://tdlib.github.io/telegram-bot-api/build.html?os=Linux

Further information can be found here:
https://core.telegram.org/bots/api#using-a-local-bot-api-server

## Build
Run the following command inside the repo directory:

`docker build -t telegram-bot-api .`

## Create container
Use the following settings to create the container:

* Port: 8081 -> 8081
* CMD: telegram-bot-api --local

ENV | Value
------------ | -------------
TELEGRAM_API_ID |	App api_id from app configuration
TELEGRAM_API_HASH |	App api_hash from app configuration
