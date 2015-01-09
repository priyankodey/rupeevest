class CreateElssContacts < ActiveRecord::Migration
  def change
    create_table :elss_contacts do |t|
      t.string :email
      t.string :mobile

      t.timestamps
    end
  end
end
