class CreateRegistrations < ActiveRecord::Migration
  def change
    create_table :registrations do |t|
      t.string :company
      t.string :name
      t.string :telephone
      t.string :email
      t.string :duty

      t.timestamps null: false
    end
  end
end
