class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :books
  has_many :comments
  def will_save_change_to_email?
    false
  end
  def email_required?
    false
  end

  def email_changed?
    false
  end
  enum gender: { "Bboy": 1, "Bgirl": 2}, _prefix: true

end
