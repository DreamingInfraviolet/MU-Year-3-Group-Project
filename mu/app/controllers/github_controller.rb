class GithubController < ApplicationController
  def push
    %x(echo `git pull origin master` >> ~/github_log.txt)
    %x(echo `git push nuim master` >> ~/github_log_nuim.txt)
  end
end
