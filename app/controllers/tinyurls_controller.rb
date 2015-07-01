class TinyurlsController < ApplicationController
  def index
  	@urls = Tinyurl.all
  end
  def tinyurl
  	a = randomurl()
  	@data = Tinyurl.new
  	@data.user_url = params[:url]
  	@data.tiny_url = a
  	@data.save
  	redirect_to :back
  end
  def randomurl
  	obj = [('a'..'z'), ('A'..'Z'), (1..9)].map { |i| i.to_a }.flatten
	string = (0...5).map { obj[rand(obj.length)] }.join
  end
end
