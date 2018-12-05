class CreateMessageTable < ActiveRecord::Migration[5.0]
  def change
    create_table :messages do |t|
      t.text :content
    end
  end
end
