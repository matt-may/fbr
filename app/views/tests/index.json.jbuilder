json.array!(@tests) do |test|
  json.extract! test, :id, :quiz_run_id
  json.url test_url(test, format: :json)
end
