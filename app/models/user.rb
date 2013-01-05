class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :yubikey_database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :timeoutable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me,
    :useyubikey, :registeredyubikey, :yubiotp
  attr_accessor :yubiotp

  def registeredyubikey=(yubiotp)
    write_attribute(:registeredyubikey, yubiotp[0..11])
  end
end
