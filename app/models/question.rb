class Question < ActiveRecord::Base

	has_one :answer , dependent: :destroy
	belongs_to :subtopic

	accepts_nested_attributes_for :answer
	
end



