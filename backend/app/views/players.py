# -*- coding: utf-8 -*-
import logging
from functools import partial
import json
import os

from rest_framework.response import Response
from rest_framework.views import APIView, exception_handler
from app.dbmodels import models
from django.db import connection
import pandas as pd
from IPython.display import display

LOGGER = logging.getLogger('django')


class PlayerSummary(APIView):
    logger = LOGGER

    def get(self, request, playerID):
        """Return player data"""
        print(playerID)
        player_stat_rows = []
        player_summary = {}
        # TODO: Complete API response, replace placeholder below with actual implementation that sources data from database
        # print(os.path.dirname(os.path.abspath(__file__)))
        # with open(os.path.dirname(os.path.abspath(__file__)) + '/sample_response/sample_response.json') as sample_response:
            # data = json.load(sample_response)

        pquery_pl_name = """ select ap."name" from public.app_player ap where ap.id = %s """
        pquery_shot_stats = """ select * from public.app_shots as2 where as2.game_id = %s and as2.player_id = %s """
        pquery_pl_stats = """ select * from public.app_player_stat aps where aps.player_id = %s """

        with connection.cursor() as cursor:
            cursor.execute(pquery_pl_name, [playerID])
            player_summary["name"] = cursor.fetchone()[0]
            print(player_summary)

            cursor.execute(pquery_pl_stats, playerID)
            # row = cursor.fetchall()
            columns = [col[0] for col in cursor.description]
            player_stat_rows = [dict(zip(columns, row)) for row in cursor.fetchall()]
            for player_stat_row in player_stat_rows:
                game_id = player_stat_row.get("game_id")
                print("------------ game " + str(game_id))
                cursor.execute(pquery_shot_stats, [game_id, playerID])
                columns = [col[0] for col in cursor.description]
                shot_rows = [dict(zip(columns, row)) for row in cursor.fetchall()]
                player_stat_row["shots"] = shot_rows

            player_summary["games"] = player_stat_rows

        return Response(player_summary)
