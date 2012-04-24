class JokesController < ApplicationController
  def new
		@joke = Joke.new
  end

  def index
		@jokes = Joke.all
  end

	def create
		@joke = Joke.new(params[:joke])
		if @joke.save
			flash[:success] = 'saved success!'
		else
			flash[:error] = 'error! didnt save'
		end
		redirect_to new_joke_path
		
		#redirect_to jokes_path
	end

	def update
	end

	def destroy
	end

  def show
		@joke = Joke.find(params[:id])
  end
end
