class User < ApplicationRecord

  has_secure_password

  has_many :projects
  has_many :reviews
  has_many :comments
  has_many :project_statuses

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, 
                    :uniqueness => {:case_sensitive => false}
                    
  # validates :password, presence: true, length: {minimum: 5}
  # validates :password_confirmation, presence: true

  def self.authenticate_with_credentials(email, password)
    user = User.find_by_email(email.downcase.strip)
    if user && user.authenticate(password)
      user
    else
      nil
    end
  end
end
