class ProfileController < ApplicationController
  def add
    render 'profile/create'
  end

  def store
    redirect_to edit_profile_path
  end

  def edit
    render 'profile/edit'
  end

  def update
    redirect_to edit_profile_path
  end
end
