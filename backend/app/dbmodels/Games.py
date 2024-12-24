from django.db import models

class Games(models.Model):
    id = models.IntegerField()
    date = models.CharField(max_length=10)
    homeTeam = models.IntegerField()
    awayTeam = models.IntegerField()
