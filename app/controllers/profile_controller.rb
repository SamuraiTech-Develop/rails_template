class ProfileController < ApplicationController
  def new
    @profile = Profile.new
    render 'profile/new'
  end

  def create
    @profile = Profile.new(profile_params)
    
    if @profile.save
      redirect_to edit_profile_path, notice: '登録しました'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    render 'profile/edit'
  end

  def update
    redirect_to edit_profile_path
  end
  
  private
  def profile_params
    params.require(:profile).permit(:name, :gender, :hobby, :introduction)
  end
end
