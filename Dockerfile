FROM elixir:1.6

RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -
RUN apt-get install -y inotify-tools nodejs

WORKDIR /home/app

ADD mix.lock /home/app
ADD mix.exs /home/app

RUN mix local.rebar --force
RUN mix local.hex --force
RUN mix deps.get

ADD . /home/app

RUN cd assets && npm install

CMD ["mix", "phx.server"]

EXPOSE 3000
