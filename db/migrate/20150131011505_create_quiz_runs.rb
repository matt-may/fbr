class CreateQuizRuns < ActiveRecord::Migration
  def change
    create_table :quiz_runs do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
