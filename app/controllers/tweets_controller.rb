class TweetsController < ApplicationController
  def index
    @tweets= Tweet.all
    
respond_to do |format|
      format.html
      format.json
      format.pdf {render template:'tweets/tweettemplate',pdf:'tweettemplate'}
    end
    
  end
  
  def new
   @tweet = Tweet.new
  end
  
  def create
    Tweet.create(name: params[:tweet][:name], content: params[:tweet][:content])
    redirect_to "/"
  end
end
