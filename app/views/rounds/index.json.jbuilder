json.array!(@rounds) do |round|
  json.extract! round, :id, :bracket_id
  json.url round_url(round, format: :json)
end
