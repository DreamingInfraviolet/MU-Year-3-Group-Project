class PagesController < ApplicationController
 
  def sign_in
	@users = User.all
  end

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

  def feedback
  end
end
