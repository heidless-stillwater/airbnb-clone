# frozen_string_literal: true

class HomeController < ApplicationController
  def index
    @user = User.first
  end

  def show
    @user = User.first
  end
end
