json.array!(@questions) do |question|
  json.extract! question, :id, :prompt, :quiz_run_id
  json.url question_url(question, format: :json)
end
