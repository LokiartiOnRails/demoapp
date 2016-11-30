class Micropost < ActiveRecord::Base
	belongs_to :uder
	validates :content, length: { maximum: 140 }
end
