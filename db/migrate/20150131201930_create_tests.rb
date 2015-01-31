class CreateTests < ActiveRecord::Migration
  def change
    create_table :tests do |t|
      t.references :quiz_run, index: true

      t.timestamps
    end
  end
end
