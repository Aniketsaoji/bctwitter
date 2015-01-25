class TweetsController < ApplicationController

	before_action :authenticate_user!
	def new 
		@tweet = Tweet.new
		@tweets = current_user.tweets
	end

	def create

		@tweet = Tweet.create(tweet_params)
		@tweet.user = current_user
		@tweet.save
		@tweets = current_user.tweets

		if @tweet.save
		flash.now[:success]  = "Yo dawg, you created a Tweet"
	end
		render 'new'
	end

	def index
		@tweets = Tweet.all#.reject{ |tweet| tweet.user == current_user}
		@relationship = Relationship.new
	end

	private

	def tweet_params
		params.require(:tweet).permit(:content)
	end


end
