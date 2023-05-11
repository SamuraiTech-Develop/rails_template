class Admin::ProfileController < ApplicationController
  def add
    render 'admin/profile/create'
  end

  def create
    redirect_to 'admin/profile/create'
  end

  def edit
    render 'admin/profile/edit'
  end

  def update
    redirect_to 'admin/profile/edit'
  end
end
