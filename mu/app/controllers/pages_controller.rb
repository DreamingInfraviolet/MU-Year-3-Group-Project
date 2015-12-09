class PagesController < ApplicationController

  def sign_up_confirmation
  end

  def homepage
  end

  def progress_summary
  end

  def exercise_menu
  end

  def exercise
  end

  def exercise_completed
   if !@current_user.nil?
     if !params[:score].nil?
       @current_user.score+=params[:score].to_i
     end
     if @current_user.exercises_completed_id.nil?
       @current_user.exercises_completed_id = params[:exercise_id].to_s
     else
       @current_user.exercises_completed_id << ","
       @current_user.exercises_completed_id << params[:exercise_id].to_s
     end

     @current_user.save
   end
  end

  def exercise_completed?(id)
    if !@current_user.nil?
      return @current_user.exercises_completed_id.split(',').to_set.include?(id.to_s)
    end
  end

  helper_method :exercise_completed?

  def feedback
  end

  def dyspraxiainfo
  end

  def termsandconditions
  end

  def aboutus
  end

  def faq
  end
end
