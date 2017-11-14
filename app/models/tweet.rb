class Tweet < ActiveRecord::Base
  #association
  belongs_to :user

  #carrierwaveの認定コードを追加
  mount_uploader :image, ImageUploader

  #validation
  validates_presence_of :user_id, :text
end
