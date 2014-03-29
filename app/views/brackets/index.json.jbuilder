json.array!(@brackets) do |bracket|
  json.extract! bracket, :id, :name, :final_game_score, :tournament_id, :user_id
  json.url bracket_url(bracket, format: :json)
end
