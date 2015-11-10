class GithubController < ApplicationController
  def push
    %x(echo `git pull origin master` >> ~/github_log.txt)
  end
end
