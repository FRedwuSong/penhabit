class Pen < ApplicationRecord
	belongs_to :user
	mount_uploader :image, PenImageUploader
	
end
