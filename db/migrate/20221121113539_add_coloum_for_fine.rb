class AddColoumForFine < ActiveRecord::Migration[7.0]
  def change
    add_column :borrow_histories , :due_date , :idate
    add_column :borrow_histories , :fine , :integer
  end
end
