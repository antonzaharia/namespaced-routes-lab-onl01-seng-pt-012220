class Admin::PreferencesController < ApplicationController

  def index
  end

  def change
    @pref = Admin::Preference.find_by(id: "1")
    if params[:change_artist]
      @prefchange_artist
      redirect_to admin_preferences_path, alert: "Users can create artists: #{@pref.allow_create_artists}."
    end
  end
end
