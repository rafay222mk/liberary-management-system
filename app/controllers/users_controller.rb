class UsersController < ApplicationController
  load_and_authorize_resource
  def index
    @users = User.std_list  if params[:show] == 'student_list'
    @users = User.lib_list if params[:show] == 'librarian_list'
  end
  def show
    @student = User.find(params[:id])
  end
end
  