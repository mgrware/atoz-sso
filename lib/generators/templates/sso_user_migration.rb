class CreateSsoUsers < ActiveRecord::Migration
  def change
    create_table :sso_users do |t|
      t.integer :uid
      t.integer :role_id
      t.text :auth_token

      t.timestamps
    end
  end
end
