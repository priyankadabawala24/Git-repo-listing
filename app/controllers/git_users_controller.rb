class GitUsersController < ApplicationController
	before_action :authenticate_user!

  include HTTParty

  def search
  	if params[:search].present?
  		@responses = HTTParty.get("https://api.github.com/users/#{params[:search]}/repos?sort=watchers")
  		@responses = @responses.compact.sort_by { |repo|
											      repo["watchers_count"]
											    }
  	end
  	respond_to do |format|
      format.html
      format.js 
    end
  end
end
