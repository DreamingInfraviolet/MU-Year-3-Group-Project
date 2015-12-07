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
   @current_user.score+=100
   @current_user.save
   redirect_to '/exercise_menu'
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
