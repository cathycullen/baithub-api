class CatchesController < ApplicationController

  # GET /catches
  def index
    @catches = Catch.all
  end


  # POST /catches
  def create
    @catch = Catch.new(catch_params)

    if @catch.save
      render status: :created
    else
      render json: @catch.errors, status: :unprocessable_entity
    end
  end


  private

    # Only allow a trusted parameter "white list" through.
    def catch_params
      params.require(:catch).permit(:species, :weight, :length, :bait_id, :user_id)
    end
end
