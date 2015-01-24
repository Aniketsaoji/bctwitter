class TweetsController < ApplicationController

	def new 
		@tweet = Tweet.new
	end

	def create
		@tweet = Tweet.create(tweet_params)
		flash.now[:success]  = "Yo dawg, you created a Tweet"
		render 'new'
	end

	private

	def tweet_params
		params.require(:tweet).permit(:content)
	end


end
