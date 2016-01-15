class Movie < ActiveRecord::Base
	def flop?
		self.total_gross.blank? || self.total_gross < 50000000
	end
	validates :name, presence: true
  validates :website, presence: true,
  format: /\A\S+@\S+\z/, uniqueness: {case_sensitiv: false} #regular expressions
end
