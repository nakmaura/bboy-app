class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :books
  def will_save_change_to_email?
    false
  end
  def email_required?
    false
  end

  def email_changed?
    false
  end
end
