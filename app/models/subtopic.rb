class Subtopic < ActiveRecord::Base

    #relations
	belongs_to :topic
	has_many :questions , dependent: :destroy


end
