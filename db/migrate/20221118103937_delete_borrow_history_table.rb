class DeleteBorrowHistoryTable < ActiveRecord::Migration[7.0]
  def change
    drop_table :borrow_history
  end
end
