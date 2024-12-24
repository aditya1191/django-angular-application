# Generated by Django 3.2.25 on 2024-10-08 20:21

import django.core.validators
from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Games',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('game_id', models.IntegerField()),
                ('date', models.CharField(max_length=10)),
                ('homeTeam', models.IntegerField()),
                ('awayTeam', models.IntegerField()),
            ],
        ),
        migrations.CreateModel(
            name='Player_stat',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('isStarter', models.BooleanField(default=False)),
                ('minutes', models.IntegerField()),
                ('points', models.IntegerField()),
                ('assists', models.IntegerField()),
                ('offensiveRebounds', models.IntegerField()),
                ('defensiveRebounds', models.IntegerField()),
                ('steals', models.IntegerField()),
                ('blocks', models.IntegerField()),
                ('turnovers', models.IntegerField()),
                ('defensiveFouls', models.IntegerField()),
                ('offensiveFouls', models.IntegerField()),
                ('freeThrowsMade', models.IntegerField()),
                ('freeThrowsAttempted', models.IntegerField()),
                ('twoPointersMade', models.IntegerField()),
                ('twoPointersAttempted', models.IntegerField()),
                ('threePointersMade', models.IntegerField()),
                ('threePointersAttempted', models.IntegerField()),
                ('game_id', models.IntegerField()),
                ('player_id', models.IntegerField()),
            ],
        ),
        migrations.CreateModel(
            name='Shots',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('game_id', models.IntegerField()),
                ('player_id', models.IntegerField()),
                ('isMake', models.BooleanField(default=False)),
                ('locationX', models.DecimalField(decimal_places=2, default=0.0, max_digits=10, validators=[django.core.validators.MaxValueValidator(9999.99)])),
                ('locationY', models.DecimalField(decimal_places=2, default=0.0, max_digits=10, validators=[django.core.validators.MaxValueValidator(9999.99)])),
            ],
        ),
    ]