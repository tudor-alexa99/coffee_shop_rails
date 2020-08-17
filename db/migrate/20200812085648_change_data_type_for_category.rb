class ChangeDataTypeForCategory < ActiveRecord::Migration[6.0]
  def change
    change_table :dishes do |t|
      t.change :category, :string
    end
  end
end
