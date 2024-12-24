# -*- coding: utf-8 -*-
"""Contains models related to stats"""
from django.db import models
from django.core.validators import MaxValueValidator


class Games(models.Model):
    game_id = models.IntegerField()
    date = models.CharField(max_length=10)
    homeTeam = models.IntegerField()
    awayTeam = models.IntegerField()

class Shots(models.Model):
    game_id = models.IntegerField()
    player_id = models.IntegerField()
    isMake = models.BooleanField(default=False)
    locationX = models.DecimalField(
        max_digits=10,
        decimal_places=2,
        default=0.0,
      # Limiting maximum value to 9999.99
        validators=[MaxValueValidator(9999.99)])
    locationY = models.DecimalField(
        max_digits=10,
        decimal_places=2,
        default=0.0,
      # Limiting maximum value to 9999.99
        validators=[MaxValueValidator(9999.99)])

class Player(models.Model):
    name = models.CharField(max_length=100)

class Team(models.Model):
    name = models.CharField(max_length=100)

class Player_stat(models.Model):
    isStarter = models.BooleanField(default=False)
    minutes = models.IntegerField()
    points = models.IntegerField()
    assists = models.IntegerField()
    offensiveRebounds = models.IntegerField()
    defensiveRebounds = models.IntegerField()
    steals = models.IntegerField()
    blocks = models.IntegerField()
    turnovers = models.IntegerField()
    defensiveFouls = models.IntegerField()
    offensiveFouls = models.IntegerField()
    freeThrowsMade = models.IntegerField()
    freeThrowsAttempted = models.IntegerField()
    twoPointersMade = models.IntegerField()
    twoPointersAttempted = models.IntegerField()
    threePointersMade = models.IntegerField()
    threePointersAttempted = models.IntegerField()
    game_id = models.IntegerField()
    player_id = models.IntegerField()
