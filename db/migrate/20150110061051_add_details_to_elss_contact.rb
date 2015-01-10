class AddDetailsToElssContact < ActiveRecord::Migration
  def change
  		add_column :elss_contacts, :name, :string
  		add_column :elss_contacts, :kmobile, :string
  end
end
