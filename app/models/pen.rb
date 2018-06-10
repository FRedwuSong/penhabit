class Pen < ApplicationRecord
  belongs_to :user
  mount_uploader :image, ImageUploader
  
  has_many :watchs, dependent: :destroy
  has_many :watched_users, through: :watchs, source: :user

  def is_watched?(user)
    watched_users.include?(user)
  end
end
