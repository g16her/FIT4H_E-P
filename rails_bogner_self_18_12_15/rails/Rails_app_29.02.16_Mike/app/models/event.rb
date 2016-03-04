class Event < ActiveRecord::Base
	has_many	:registrations, dependent: :destroy
	has_many	:likes, dependent: :destroy
	has_many	:likers, through: :likes, source: :user

	validates :name, presence: true
	validates :description, length: { minimum: 25 }
	validates :capacity, numericality: { only_integer: true, greater_than: 0 }
	validates :image_file, allow_blank: true, format: { with: /\w+\.(gif|jpg|png)\z/i, message: "Dateiformat muss jpg, gif oder png sein!" }
	
	def free?
		self.price.blank? || self.price.zero?
	end

	def self.upcoming #Klassenmethode
		where("start_at <= ?", Time.now).order("start_at")
	end

	def self.past
		where("start_at >= ?", Time.now).order("start_at")
	end
end
