class CreateContactTable < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts do |t|
      t.string :name
    end
  end
end
