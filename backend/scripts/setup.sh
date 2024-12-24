#!/bin/bash

sudo -u postgres bash -c "psql -c \"CREATE USER okcapplicant WITH PASSWORD 'thunder';\""

sudo -u postgres bash -c "psql -c \"GRANT ALL PRIVILEGES ON DATABASE "okc" to okcapplicant;\""

sudo -u postgres bash -c "psql -c \"CREATE DATABASE okc;\""

sudo -u postgres bash -c "psql -c \"create schema app;\""

sudo -u postgres bash -c "psql -c \"grant all on schema app to okcapplicant;\""

export POSTGRES_HOST=postgres
export POSTGRES_PORT=5432
export POSTGRES_DB=okc
export POSTGRES_USER=okcapplicant
export POSTGRES_PASSWORD=thunder
export DATABASE_URL=postgres://okcapplicant:thunder@localhost:5432/okc

# psql -U okcapplicant -d okc
python make_flatFile.py

python ../manage.py makeMigrations
python ../manage.py migrate
python ../manage.py loaddata ../app/fixtures/teams.json 
python ../manage.py loaddata ../app/fixtures/games.json
python ../manage.py loaddata ../app/fixtures/player_stat.json
python ../manage.py loaddata ../app/fixtures/players.json
python ../manage.py loaddata ../app/fixtures/shots_stat.json
