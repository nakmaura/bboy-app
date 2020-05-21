class Book < ApplicationRecord
  mount_uploader :video, VideoUploader
  validates :video,:old,presence: true
  belongs_to :user
end
