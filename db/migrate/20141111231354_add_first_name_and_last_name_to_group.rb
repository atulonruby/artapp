class AddFirstNameAndLastNameToGroup < ActiveRecord::Migration
  def change
  	add_column :groups, :first_name, :string
  	add_column :groups, :last_name, :string
  end
end
