class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users, id: :uuid do |t|
      # Basics
      t.string :username
      t.string :primary_email
      t.string :password_digest

      # Profile
      t.string :first_name
      t.string :last_name

      # Facebook
      t.string :facebook_uid
      t.string :facebook_access_token

      t.timestamps
    end
    add_index :users, :username, unique: true
    add_index :users, :primary_email, unique: true
    add_index :users, :facebook_uid, unique: true
  end
end
