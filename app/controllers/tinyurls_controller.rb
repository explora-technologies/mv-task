class TinyurlsController < ApplicationController
  def index
  	@tinies = Tinyurl.all
  end
  def tinyurl
  	a = randomurl()
  end
  def randomurl
  	obj = [('a'..'z'), ('A'..'Z'), (1..9)].map { |i| i.to_a }.flatten
	string = (0...5).map { obj[rand(obj.length)] }.join
  end
end
