class AddTestIdToResults < ActiveRecord::Migration
  def change
    add_reference :results, :test, index: true
  end
end
