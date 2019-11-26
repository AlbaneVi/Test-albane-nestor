class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :birthDate
      t.string :nationality
      t.string :status
      t.references :room, foreign_key: true

      t.timestamps
    end
  end
end
