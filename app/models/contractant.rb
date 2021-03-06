class Contractant < ActiveRecord::Base
  attr_accessible :username, :password, :password_confirmation
  attr_accessor :password
  has_many :project
  accepts_nested_attributes_for :project

  before_save :encrypt_password

  validates_presence_of :username
  validates_uniqueness_of :username
  validates_confirmation_of :password
  validates_presence_of :password, :on => :create, :message => "can't be blank"

  def encrypt_password
    if password.present?
      self.password_salt = BCrypt::Engine.generate_salt
      self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
    end
  end

  def self.authenticate(username, password)
    user = find_by_username(username)
    return user if user && user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt)
  end
end
