class AddSubtopicIdToQuestions < ActiveRecord::Migration
  def change
  	add_column :questions, :subtopic_id, :integer
  end
end
