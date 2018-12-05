class Message < ActiveRecord::Base
  has_many :users
  has_many :contacts, through: :users
end
