class IndexController < ApplicationController
  protect_from_forgery

  def home
    @key = params[:key]
    @status, @content = Fisher.fish(@key)
  end

  def about

  end

  def history

  end

end
