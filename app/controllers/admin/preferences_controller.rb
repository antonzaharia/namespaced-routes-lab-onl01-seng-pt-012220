class Admin::PreferencesController < ApplicationController

  def index
  end

  def change
    @pref = Admin::Preference.find_by[id: "1"]
    if params[:change_artist]
      @pref.allow_create_artist.boolean = !@pref.allow_create_artist.boolean
    end
  end
end
