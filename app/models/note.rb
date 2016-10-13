class Note < ActiveRecord::Base

		#relations
		has_many :topics , dependent: :destroy

end
