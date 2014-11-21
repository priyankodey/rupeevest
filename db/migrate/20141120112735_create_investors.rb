class CreateInvestors < ActiveRecord::Migration
  def change
    create_table :investors do |t|
      t.string :name
      t.string :email
      t.string :number
      t.integer :user_id

      t.timestamps
    end
  end
end
