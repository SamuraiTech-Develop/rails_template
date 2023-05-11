class User::ProfileController < ApplicationController
  def add
    render 'user/profile/create'
  end

  def create
    redirect_to 'user/profile/create'
  end

  def edit
    render 'user/profile/edit'
  end

  def update
    redirect_to 'user/profile/edit'
  end
end
