class FlatsController < ApplicationController
  before_action :find_flat, only: %i[show edit update destroy]
  def index
    @flats = Flat.all
    @search = params['search']
    if @search.present?
      @name = @search['name']
      @flats = Flat.where('name LIKE ?', "%#{@name}%")
    end
  end

  def show
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(flat_params)
    if @flat.save
      redirect_to @flat
    else
      render :new
    end
  end

  def edit
  end

  def update
    @flat.update(flat_params)

    redirect_to @flat
  end

  def destroy
    @flat.destroy
    redirect_to flats_path
  end

  # def search
  #   @flats = Flat.where("name LIKE '%#{params[:search]}%'")
  # end

  private

  def flat_params
    params.require(:flat).permit(:name, :address, :description, :price_per_night, :number_of_guests, :picture_url)
  end

  def find_flat
    @flat = Flat.find(params[:id])
  end
end
