class IndexController < ApplicationController
  protect_from_forgery

  def home
    @key = params[:key]
    @status, @content = Fisher.fish(@key)
  end

end
