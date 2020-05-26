class Book < ApplicationRecord
  mount_uploader :video, VideoUploader
  validates :video,:old,presence: true
  belongs_to :user
  has_many :comments
  enum style: { "パワームーバー": 1, "スタイラー(フットワーク・スレッド系)": 2,"スタイラー(ストロング系)": 3,"スタイラー(軟体系)": 4, "オールラウンダー": 5}, _prefix: true
  enum old: { "歴半年未満": 1,"歴半年以上1年未満": 2, "歴1年以上3年未満": 3,"歴3年以上5年未満": 4,"歴5年以上10年未満": 5,"歴10年以上": 6}, _prefix: true
end
