class CreateUserProfiles < ActiveRecord::Migration
  def change
    create_table :user_profiles do |t|
      t.string :gender
      t.string :address
      t.string :company
      t.string :tel_1
      t.string :tel_2
      t.string :zip
      t.string :locale
      t.integer :user_id
      t.boolean :isValid, :default => true

      t.timestamps
    end
  end
end
