class Holiday < ApplicationRecord
	validates_presence_of :reason, :starting_date, :ending_date
end
