class AddKnameToElssContact < ActiveRecord::Migration
  def change
  	add_column :elss_contacts, :kname, :string
  end
end
