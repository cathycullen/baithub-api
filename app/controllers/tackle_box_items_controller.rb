class TackleBoxItemsController < ApplicationController

  # GET /tackle_box_items
  def index
    @items = TackleBoxItem.all.includes(:bait)
  end

  # POST /tackle_box_items
  def create
    @item = TackleBoxItem.new(tackle_box_item_params)

    if @item.save
      render status: :created
    else
      render json: @item.errors, status: :unprocessable_entity
    end
  end

  private

    # Only allow a trusted parameter "white list" through.
    def tackle_box_item_params
      params.require(:tackle_box_item).permit(:bait_id, :user_id)
    end
end
