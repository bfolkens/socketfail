FROM elixir:1.8.1-alpine

RUN apk add --no-cache git && \
    mix local.hex --force && \
    mix local.rebar --force

WORKDIR /srv/app

COPY . /srv/app/

RUN mix deps.get

CMD ["/usr/local/bin/mix", "run", "--no-halt"]
