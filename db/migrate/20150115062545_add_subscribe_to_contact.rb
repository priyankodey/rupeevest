class AddSubscribeToContact < ActiveRecord::Migration
  def change
  	  add_column :contacts, :subscribe, :string
  end
end
