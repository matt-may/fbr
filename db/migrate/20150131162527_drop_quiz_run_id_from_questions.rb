class DropQuizRunIdFromQuestions < ActiveRecord::Migration
  def change
    remove_column :questions, :quiz_run_id
  end
end
