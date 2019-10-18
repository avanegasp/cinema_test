class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.integer :identification_card
      t.string :email
      t.string :name
      t.integer :phone


      t.timestamps
    end
  end
end
