#!/usr/bin/env bash
docker build -t auth0-elixir-single-page-app .
docker run -p 3000:3000 -it auth0-elixir-single-page-app
