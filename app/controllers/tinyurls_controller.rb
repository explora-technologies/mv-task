class TinyurlsController < ApplicationController
  def index
  	@urls = Tinyurl.all
  end
  def tinyurl
  	@data = Tinyurl.new
  	@data.user_url = params[:url]
  	@data.tiny_url = request.protocol + request.host_with_port + '/' + randomurl()
  	@data.save
  	redirect_to :back
  end
  def randomurl
  	obj = [('a'..'z'), ('A'..'Z'), (1..9)].map { |i| i.to_a }.flatten
	string = (0...5).map { obj[rand(obj.length)] }.join
  end
  def siteredirect
    @data = params[:rest]
    @data = request.protocol + request.host_with_port + '/' + @data 
    @userdata = Tinyurl.find_by_tiny_url(@data)
    if @userdata
       redirect_to @userdata.user_url 
    else
       redirect_to root_path
    end

  end
end
