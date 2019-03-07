class BaitsController < ApplicationController
  before_action :set_bait, only: [:show, :update, :destroy]

  # GET /baits
  def index
    @baits = Bait.all
  end
end
