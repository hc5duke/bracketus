json.array!(@seeds) do |seed|
  json.extract! seed, :id, :seed, :team_id, :region_id, :tournament_id
  json.url seed_url(seed, format: :json)
end
