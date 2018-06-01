class Pen < ApplicationRecord
	belongs_to :user
	mount_uploader :image, ImageUploader

	has_many :watchs, dependent: :destroy
  #刪掉tweet 就會刪掉like
  has_many :watched_users, through: :watchs, source: :user

	def is_watched?(user)
    self.watched_users.include?(user)
  end

  def watch_at(user)
    if self.watched_users.include?(user)
      watch = self.watches.find_by(user_id: user.id)
      return watch.created_at
    else
      return "no watch "
    end
  end
end
