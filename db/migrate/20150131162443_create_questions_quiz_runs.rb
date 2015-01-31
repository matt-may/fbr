class CreateQuestionsQuizRuns < ActiveRecord::Migration
  def change
    create_table :questions_quiz_runs do |t|
      t.references :question, index: true
      t.references :quiz_run, index: true
    end
  end
end
