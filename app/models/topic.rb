class Topic < ActiveRecord::Base

	#realtions
	belongs_to :note
	has_many :subtopics, dependent: :destroy

end
