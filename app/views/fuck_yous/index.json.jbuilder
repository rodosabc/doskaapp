json.array!(@fuck_yous) do |fuck_you|
  json.extract! fuck_you, :id, :fuck_yourself_counter
  json.url fuck_you_url(fuck_you, format: :json)
end
