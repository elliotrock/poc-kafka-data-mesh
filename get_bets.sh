
curl -X POST \
  -H "Content-Type: application/vnd.kafka.v2+json" \
  --data '{"name": "tote_win_bet_odds_json", "format": "json", "auto.offset.reset": "earliest"}' \
  http://localhost:8082/consumers/tote_group

curl -X POST \
  -H "Content-Type: application/vnd.kafka.v2+json" \
  --data '{"topics":["tote_win_bet_odds_json"]}' \
  http://localhost:8082/consumers/tote_group/instances/tote_win_bet_odds_json/subscription

curl -X GET \
  -H "Accept: application/vnd.kafka.json.v2+json" \
  http://localhost:8082/consumers/tote_group/instances/tote_win_bet_odds_json/records | jq
