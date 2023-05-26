class ProfileController < ApplicationController
  def new
    @profile = Profile.new
    render :new # renders app/views/profile/new.html.erb
  end

  def create
    @profile = Profile.new(profile_params)
    if @profile.save
      redirect_to edit_profile_path, notice: 'プロフィールを登録しました' # redirects to GET "/profile/edit"
    else
      render :new, status: :unprocessable_entity # renders app/views/profile/new.html.erb
    end
  end

  def edit
    render :edit # renders app/views/profile/edit.html.erb
  end

  def update
    redirect_to edit_profile_path # redirects to GET "/profile/edit"
  end

  private
  def profile_params
    params.require(:profile).permit(:name, :gender, :hobby, :introduction)
  end
end
