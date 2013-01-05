class DeviseCreateStewards < ActiveRecord::Migration
  def change
    create_table(:stewards) do |t|
      t.database_authenticatable :null => false
      t.recoverable
      t.rememberable
      t.trackable

      # t.encryptable
      # t.confirmable
      # t.lockable :lock_strategy => :failed_attempts, :unlock_strategy => :both
      # t.token_authenticatable


      t.timestamps
    end

    add_index :stewards, :email,                :unique => true
    add_index :stewards, :reset_password_token, :unique => true
    # add_index :stewards, :confirmation_token,   :unique => true
    # add_index :stewards, :unlock_token,         :unique => true
    # add_index :stewards, :authentication_token, :unique => true
  end

end
