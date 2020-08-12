class AddPasswordDigestToUsers < ActiveRecord::Migration[6.0]
  def up
    add_column :users, :password_digest, :string
  end

  def down
    remove_column :users, :password_digest
  end
end
