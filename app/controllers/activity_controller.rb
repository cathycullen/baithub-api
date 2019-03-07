class ActivityController < ApplicationController
  before_action :set_bait, only: [:show, :update, :destroy]

  # GET /baits
  def index
    @catches = Catch.all.includes(:bait, :user)
  end
end
