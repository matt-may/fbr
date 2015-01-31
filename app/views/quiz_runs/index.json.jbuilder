json.array!(@quiz_runs) do |quiz_run|
  json.extract! quiz_run, :id, :name, :description
  json.url quiz_run_url(quiz_run, format: :json)
end
