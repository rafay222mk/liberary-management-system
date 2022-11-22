class DropHistoriesTable < ActiveRecord::Migration[7.0]
  def change
    drop_table :borrow_histories
  end
end
