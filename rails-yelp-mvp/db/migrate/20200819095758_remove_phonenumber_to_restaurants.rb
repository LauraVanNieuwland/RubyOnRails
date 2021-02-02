class RemovePhonenumberToRestaurants < ActiveRecord::Migration[6.0]
  def change
    remove_column :restaurants, :phonenumber, :integer
    add_column :restaurants, :phone_number, :string
  end
end
