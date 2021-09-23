class ReviewController < ApplicationController
  def index
    @reviews = Review.all
  end

  def show
  end

  def new
    @review = Reviews.new
  end

  def edit
  end

  def create
    @review = Review.new(review_params)

    if review.save
      redirect_to @review, notice: "Review was successfully created"
    else
      render :new
    end
  end

  def update
    if @review.update(review_params)
      redirect_to @review, notice: "Review was successfully updated"
    else
      render :edit
    end
  end

  def destroy
    @review.destroy
    redirect_to restaurants_url, "review was successfully deleted"
  end

  private
  def set_restaurant
    @review = review.find(params[:id])
  end

  def restaurant_params
    review.require(:review).permit(:rating, :content)
  end
end
