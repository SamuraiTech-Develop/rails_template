class ProfileController < ApplicationController
  def add
    render 'profile/create'
  end

  def create
    redirect_to 'profile/create'
  end

  def edit
    render 'profile/edit'
  end

  def update
    redirect_to 'profile/edit'
  end
end
