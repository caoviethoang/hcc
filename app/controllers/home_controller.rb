# frozen_string_literal: true

class HomeController < ApplicationController
  # before_action :authenticate_user!

  def index
    @users = User.order(:name).page params[:page]
  end
end
