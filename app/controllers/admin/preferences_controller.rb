class Admin::PreferencesController < ApplicationController

  def index
  end

  def change
    @pref = Admin::Preference.find_by(id: "1")
    if params[:change_artist]
      binding.pry
      # if @pref.allow_create_artists == "true"
      #   @pref.update(allow_create_artists: "false")
      #   @pref.save
      # else
      #   @pref.update(allow_create_artists: "true")
      #   @pref.save
      # end
      redirect_to admin_preferences_path, alert: "Users can create artists: #{@pref.allow_create_artists}."
    end
  end
end
