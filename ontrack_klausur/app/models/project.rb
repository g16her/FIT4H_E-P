class Project < ActiveRecord::Base
	has_many  :employees # benötigt für die 1:n
end
