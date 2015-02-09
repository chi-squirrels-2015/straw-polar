class User < ActiveRecord::Base
  has_secure_password
  has_many :responses, foreign_key: :respondent_id
  has_many :polls, foreign_key: :creator_id

  before_save :sanitize_email

  def self.by_email(email)
    find_by(email: email.downcase)
  end

  def self.authenticate(email, password)
    by_email(email).try(:authenticate, password)
  end
  
  private
    def sanitize_email
      self.email.downcase!
    end
end
