class Note < ActiveRecord::Base


		mount_uploader :portada, PortadaUploader 
		#relations
		has_many :topics , dependent: :destroy
		has_many :reviews

end
