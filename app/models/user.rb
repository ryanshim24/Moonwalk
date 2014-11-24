class User < ActiveRecord::Base
  has_many :favorites
  has_secure_password
  
  validates :username,
    uniqueness: true,
    presence: true

  def generate_token(column)
    begin
      self[column] = SecureRandom.urlsafe_base64
    end while User.exists?(column => self[column])
  end
  
end