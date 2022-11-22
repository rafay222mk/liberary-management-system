class User < ApplicationRecord
  has_many :books, dependent: :destroy
  has_many :borrow_histories

  scope :std_list, -> { where(role: 'student') }
  scope :lib_list, -> { where(role: 'libraian') }
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,
         :registerable,
         :recoverable,
         :rememberable,
         :validatable,
         authentication_keys:  [:login]

  attr_accessor :login

  ROLE_LIST = ["student" , "libraian"]
  
  def login
    @login || self.email || self.user_name
  end

  def self.find_for_database_authentication(warden_conditions)
    conditions = warden_conditions.dup
    login = conditions.delete(:login)
    where(conditions).where(["lower(user_name) = :value OR lower(email) = :value", { :value => login.strip.downcase }]).first
  end
end
