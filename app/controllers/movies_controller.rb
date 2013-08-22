class MoviesController < ApplicationController
  
  before_filter :authenticate_user!, only: [:edit]

  def index
  	@movie = Movie.all

  end

  def show 
  	@movie = Movie.find(params[:id])
  end

def destroy
	@movie = Movie.find(params[:id])
	@movie.destroy
	redirect_to root_path
end
 

  def edit
  	@movie = Movie.find(params[:id])
  end

  def update
  	@movie = Movie.find(params[:id]) 
    @movie = current_user.websites.all 

  	if @movie.update(movie_params) 
  		redirect_to movies_path 
  	else render 'edit' 
  	end
  end

  def new
  end

  def create

  	@movie = Movie.new(movie_params)
    
  	@movie.save
  	redirect_to @movie
  end

  def search

    @query = params[:q]

    if params[:criteria] == "title"
      @movies = Movie.where('title LIKE ?', "%#{@query}%")
    elsif params[:criteria] == "description"
      @movies = Movie.where('description LIKE ?', "%#{@query}%")
    else 
       @movies = Movie.where('year_released LIKE ?', "%#{@query}%")
    end
    #@desc_query = params[:d]
    #@movies = Movie.where('title LIKE ? AND description LIKE ?', "#{@query}%", "#{@desc_query}")


    render 'movies_search'

  end

 

  private 

  def movie_params
  	params.require(:movie).permit(:title, :description, :year_released)

  end


end




# (Lab Time) Movie Model: 60 min

# Task Instructions

# Add to your movie_app

# Generate a Movie model with title, description and year_released attributes

# Use the seeds file to populate your database with movies.

# Update your movie's index.html.erb so that it list all movies in the database. (Google is your friend).

# Rails console is also your friend. Use it to explore active record methods that help you interact with the database.

# Note: This application is due lesson 11.