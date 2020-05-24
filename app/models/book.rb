class Book < ApplicationRecord
  mount_uploader :video, VideoUploader
  validates :video,:old,presence: true
  belongs_to :user
  enum style: { "": 1, "": 2}, _prefix: true
  enum old: { "": 1, "": 2}, _prefix: true
end
