class HomesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index], raise: false

  def index
    @categories = Category.includes(:products).all
  end
end
