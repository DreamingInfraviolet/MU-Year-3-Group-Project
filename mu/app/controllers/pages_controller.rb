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
   @current_user.score+=params[:score].to_i if !params[:score].nil?
   @current_user.save
   end
  end

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
