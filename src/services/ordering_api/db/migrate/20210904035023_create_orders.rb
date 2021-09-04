class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.string :user_name
      t.decimal :total_price
      t.string :first_name
      t.string :last_name
      t.string :email_address
      t.string :address_line
      t.string :country
      t.string :state
      t.string :zipcode
      t.string :card_name
      t.string :card_number
      t.string :expiration
      t.string :cvv
      t.integer :payment_method

      t.timestamps
    end
  end
end
