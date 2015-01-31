class RemoveQuizRunIdFromResults < ActiveRecord::Migration
  def change
    remove_column :results, :quiz_run_id
  end
end
