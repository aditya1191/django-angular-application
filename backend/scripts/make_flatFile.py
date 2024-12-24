# -*- coding: utf-8 -*-
import json

f = open('../raw_data/games.json')

json_data = json.load(f)

# Accessing nested data

games = []
for item in json_data:
    game = {}
    game["model"] = "app.games"
    game["fields"] = {}
    game["fields"]["game_id"] = item["id"]
    game["fields"]["date"] = item["date"]
    game["fields"]["homeTeam"] = item["homeTeam"]["id"]
    game["fields"]["awayTeam"] = item["awayTeam"]["id"]
    games.append(game)


with open("../../backend/app/fixtures/games.json", "w") as outfile:
    json.dump(games, outfile)

# generate player stats


player_stats = []
for item in json_data:
    game_id = item["id"]
    for player in item["homeTeam"]["players"]:
        player_stat = {}
        player_stat["model"] = "app.player_stat"
        player_stat["fields"] = dict(player)
        player_stat["fields"]["game_id"] = game_id
        player_stat["fields"]["player_id"] = player_stat["fields"]["id"]
        del player_stat["fields"]["id"]
        del player_stat["fields"]["shots"]
        player_stats.append(player_stat)

    for player in item["awayTeam"]["players"]:
        player_stat = {}
        player_stat["model"] = "app.player_stat"
        player_stat["fields"] = dict(player)
        player_stat["fields"]["game_id"] = game_id
        player_stat["fields"]["player_id"] = player_stat["fields"]["id"]
        del player_stat["fields"]["id"]
        del player_stat["fields"]["shots"]
        player_stats.append(player_stat)

with open("../../backend/app/fixtures/player_stat.json", "w") as outfile:
    json.dump(player_stats, outfile)


## seperating the shots data

shots_stats = []
for item in json_data:
    game_id = item["id"]
    for player in item["homeTeam"]["players"]:
        player_stat = player
        for shott in player_stat["shots"]:
            shot = {}
            shot["model"] = "app.shots"
            shot["fields"] = dict(shott)
            shot["fields"]["game_id"] = game_id
            shot["fields"]["player_id"] = player_stat["id"]
            shots_stats.append(shot)

    for player in item["awayTeam"]["players"]:
        player_stat = player
        for shott in player_stat["shots"]:
            shot = {}
            shot["model"] = "app.shots"
            shot["fields"] = dict(shott)
            shot["fields"]["game_id"] = game_id
            shot["fields"]["player_id"] = player_stat["id"]
            shots_stats.append(shot)

with open("../../backend/app/fixtures/shots_stat.json", "w") as outfile:
    json.dump(shots_stats, outfile)


# processing player data 

f = open('../raw_data/players.json')

player_data = json.load(f)

players = []
for item in player_data:
    player = {}
    player["model"] = "app.player"
    player["fields"] = dict(item)
    players.append(player)

with open("../../backend/app/fixtures/players.json", "w") as outfile:
    json.dump(players, outfile)

# processing teams data 

f = open('../raw_data/teams.json')

teams_data = json.load(f)

teams = []
for item in teams_data:
    team = {}
    team["model"] = "app.team"
    team["fields"] = dict(item)
    teams.append(team)

with open("../../backend/app/fixtures/teams.json", "w") as outfile:
    json.dump(teams, outfile)
