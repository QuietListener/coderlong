class IndexController < ApplicationController
  protect_from_forgery

  def home
    @res = Fisher.fish(params[:key])
  end

end
