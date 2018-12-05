class User < ActiveRecord::Base
  belongs_to :messages
  belongs_to :contacts
end
