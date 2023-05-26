class ProfileController < ApplicationController
  def new
    render :new # renders app/views/profile/new.html.erb
  end

  def create
    redirect_to edit_profile_path # redirects to GET "/profile/edit"
  end

  def edit
    render :edit # renders app/views/profile/edit.html.erb
  end

  def update
    redirect_to edit_profile_path # redirects to GET "/profile/edit"
  end
end
