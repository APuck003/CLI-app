class CreateUserTable < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.integer :message_id
      t.integer :contact_id
    end
  end
end
