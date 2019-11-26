class CreateRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :rooms do |t|
      t.string :name
      t.string :address
      t.string :zip
      t.string :city
      t.string :status
      t.string :api_id

      t.timestamps
    end
  end
end
