class CreateResults < ActiveRecord::Migration
  def change
    create_table :results do |t|
      t.references :question, index: true
      t.references :quiz_run, index: true
      t.integer :expected_answer_id
      t.integer :actual_answer_id

      t.timestamps
    end
  end
end
