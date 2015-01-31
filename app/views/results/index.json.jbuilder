json.array!(@results) do |result|
  json.extract! result, :id, :question_id, :quiz_run_id, :expected_answer_id, :actual_answer_id
  json.url result_url(result, format: :json)
end
