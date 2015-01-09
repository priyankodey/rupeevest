class CreateHomeContacts < ActiveRecord::Migration
  def change
    create_table :home_contacts do |t|
      t.string :age
      t.string :earn
      t.string :appetite

      t.timestamps
    end
  end
end
