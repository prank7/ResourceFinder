class CreateIdentities < ActiveRecord::Migration
  def change
    create_table :identities do |t|
      t.string :provider
      t.string :uid
      t.references :user, index: true
      t.string :oauth_token
      t.string :oauth_expires_at

      t.timestamps
    end
  end
end
