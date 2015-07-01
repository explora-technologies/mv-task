class TinyurlsController < ApplicationController
  def index
  	@tinies = Tinyurl.all
  end
end
