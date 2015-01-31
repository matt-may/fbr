class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text :prompt
      t.references :quiz_run, index: true

      t.timestamps
    end
  end
end
