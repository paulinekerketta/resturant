class CreateDailycashes < ActiveRecord::Migration[5.0]
  def change
    create_table :dailycashes do |t|
      t.date :date
      t.integer :sale
      t.integer :discount
      t.integer :pay_card
      t.integer :paid_online
      t.integer :purchase
      t.integer :driver_paid
      t.integer :lodgement
      t.integer :over_under

      t.timestamps
    end
  end
end
