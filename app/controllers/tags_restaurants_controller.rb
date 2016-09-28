class TagsRestaurantsController < ApplicationController
  def index
    @tags_restaurants = TagsRestaurant.all
  end

  def show
    @tags_restaurant = TagsRestaurant.find(params[:id])
  end

  def new
    @tags_restaurant = TagsRestaurant.new
  end

  def create
    @tags_restaurant = TagsRestaurant.new
    @tags_restaurant.tag_id = params[:tag_id]
    @tags_restaurant.restaurant_id = params[:restaurant_id]
    @tags_restaurant.user_id = params[:user_id]

    if @tags_restaurant.save
      redirect_to "/tags_restaurants", :notice => "Tags restaurant created successfully."
    else
      render 'new'
    end
  end

  def edit
    @tags_restaurant = TagsRestaurant.find(params[:id])
  end

  def update
    @tags_restaurant = TagsRestaurant.find(params[:id])

    @tags_restaurant.tag_id = params[:tag_id]
    @tags_restaurant.restaurant_id = params[:restaurant_id]
    @tags_restaurant.user_id = params[:user_id]

    if @tags_restaurant.save
      redirect_to "/tags_restaurants", :notice => "Tags restaurant updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @tags_restaurant = TagsRestaurant.find(params[:id])

    @tags_restaurant.destroy

    redirect_to "/tags_restaurants", :notice => "Tags restaurant deleted."
  end
end
