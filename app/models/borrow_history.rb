class BorrowHistory < ApplicationRecord
    belongs_to :book
    belongs_to :user

    def fine 
        fine_price = 1
        fine_price * (( due_date - created_at ) / 1.days).to_i
    end
end
