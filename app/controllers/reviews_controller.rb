class ReviewsController < ApplicationController

	def new
 	end

	def create
    	@movie = Movie.find(params[:movie_id])
    	@review = @movie.reviews.create(review_params)
    	
    	if @review.save
			redirect_to movie_path(@movie)
		else
			
			render 'movies/show'
		end

  	end
	
	def destroy
		@movie = Movie.find(params[:movie_id])
    	@review = @movie.reviews.find(params[:id])
    	@review.destroy
    	
    	redirect_to movie_path(@movie)
  	end

	private
    def review_params
      params.require(:review).permit(:reviewer, :comment)
    end
end
