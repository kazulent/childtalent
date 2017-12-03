class Tweet < ActiveRecord::Base
  #association
  belongs_to :user

  #carrierwaveの認定コードを追加
  mount_uploader :image, ImageUploader

  #validation
  validates_presence_of :user_id, :text



  has_many :likes, dependent: :destroy
  def like_user(user_id)
   likes.find_by(user_id: user_id)
  end

  has_many :pretties, dependent: :destroy
  def pretty_user(user_id)
    pretties.find_by(user_id: user_id)
  end

  has_many :katachis, dependent: :destroy
  def katachi_user(user_id)
    katachis.find_by(user_id: user_id)
  end

  has_many :iros, dependent: :destroy
  def iro_user(user_id)
    iros.find_by(user_id: user_id)
  end
end
