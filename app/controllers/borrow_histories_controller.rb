class BorrowHistoriesController < ApplicationController

    def index 

    end
    
    def new
        @borrow = BorrowHistory.new
    end

    def create
        @borrow = BorrowHistory.new(borrow_params)
        if @borrow.save
            redirect_to books_path
        else
            render :new, status: :unprocessable_entity
        end
    end
    def show
        @borrow = BorrowHistory.find(params[:id])        
    end
    def destroy 
        # debugger
        @borrow = BorrowHistory.find(params[:id])
        @borrow.destroy
        redirect_to user_path(current_user.id), status: :see_other
    end

    private
  
    def borrow_params
      params.require(:borrow_history).permit(:book_id , :user_id, :due_date)
    end
end
