class AddYubikeyColumnsToStewards < ActiveRecord::Migration
  def change
    add_column :stewards, :useyubikey, :boolean
    add_column :stewards, :registeredyubikey, :string
  end
end
