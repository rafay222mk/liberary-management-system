class AddingReferenceToBorrowHistory < ActiveRecord::Migration[7.0]
  def change
    change_column :borrow_history, :users, :integer, null: false, foreign_key: true
    change_column :borrow_history, :books, :integer, null: false, foreign_key: true
  end
end
