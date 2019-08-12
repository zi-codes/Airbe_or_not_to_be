class ListingsController < ApplicationController

  def index
    @listings = Listing.all

  end

  def myproperties

    @mylistings = Listing.where(user_id: session[:user_id])

  end

  def show
    @listing = Listing.find(params[:id])
    session[:listing_id] = @listing.id
    @bookings = Booking.where("listing_id = #{@listing.id}")

  end

  def new
    redirect_to '/login' if !session[:user_id]
    @listing = Listing.new
    @user_id = session[user_id]
  end

  def create
    start_date = params[:listing][:from_date]
    end_date = params[:listing][:to_date]

    parsed_start = Date.parse(start_date)
    parsed_end = Date.parse(end_date)

    @user = User.find(session[:user_id])
    @listing = @user.listings.create(listing_params)  #creating a listing with the user (found with the session id) as a foreign key

      (parsed_start..parsed_end).each do |date|
      @booking = @listing.bookings.create(date: date, availability: true)


    end

    @listing.picture.attach(params[:listing][:picture])


    redirect_to listings_index_path
  end



  def edit

  end

  private

  def listing_params

    params.require(:listing).permit(:title, :address_first_line, :address_second_line, :address_post_code, :address_city, :address_country, :description, :price)

  end
end
