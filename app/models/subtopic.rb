class Subtopic < ActiveRecord::Base

    #relations
	belongs_to :topic
	has_many :question , dependent: :destroy


end
