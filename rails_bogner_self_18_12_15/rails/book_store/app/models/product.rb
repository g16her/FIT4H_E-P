class Product < ActiveRecord::Base
		validates :image_url, allow_blank: false, format: { with: /\w+\.(gif|jpg|png)\z/i, message: "Dateiformat muss jpg, gif oder png sein!" } #- die image_url ein Bild sein muss

		validates :price, numericality: { only_decimal: true, greater_than: 0 }, allow_blank: false # der Preis nicht 0 sein darf

		validates	:title,  presence: true #- in jeder der Spalten ein Wert stehen muss
		validates	:description, presence: true #- in jeder der Spalten ein Wert stehen muss
		validates :title,  uniqueness: {case_sensitiv: true} #die title-Spalte nicht doppelt vorkommt

end
