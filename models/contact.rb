class Contact < ActiveRecord::Base
  has_many :users
  has_many :messages, though: :users
end
