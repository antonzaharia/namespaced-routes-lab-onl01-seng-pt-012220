class Admin::PreferencesController < ApplicationController

  def index
  end

  def change
    @pref = Admin::Preference.find_by(id: "1")
    if params[:change_artist]
      if @pref.allow_create_artists == "true"
        @pref.allow_create_artists = "false"
        @pref.allow_create_artists.update
      else
        @pref.allow_create_artists = "true"
      end
      redirect_to admin_preferences_path, alert: "Users can create artists: #{@pref.allow_create_artists}."
    end
  end
end
