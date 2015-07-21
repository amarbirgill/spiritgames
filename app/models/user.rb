class User < ActiveRecord::Base

  validates :email, presence: true 
  validates :name,  presence: true
  validates :email, format: {with: /\A[\w-\.]+@([\w-]+\.)+[\w-]{2,4}\z/, message: "Please enter a valid email adress"}
  
end
