class Admin::PreferencesController < ApplicationController

  def index
  end

  def change
    @pref = Admin::Preference.find_by(id: "1")
    if params[:change_artist]
      @pref.allow_create_artists = !@pref.allow_create_artists
      redirect_to admin_preferences_path, alert: "Artists allowances is now #{@pref.allow_create_artists}."
    end
  end
end
