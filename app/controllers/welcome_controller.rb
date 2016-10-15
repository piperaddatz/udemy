class WelcomeController < ApplicationController







 def home

 end

 def ingresar_preguntas
    
    @question = Question.new
    @answer = Answer.new

 end	

 def ver_preguntas

  @subtopics = Subtopic.all
  @questions = Question.all
  @answers = Answer.all
 end	

 def create
    @question = Question.new(question_params)
    @answer = Answer.new(answer_params)

   
  end



end
