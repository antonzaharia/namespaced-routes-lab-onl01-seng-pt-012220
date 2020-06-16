class Admin::PreferencesController < ApplicationController

  def index
  end

  def change
    @pref = Admin::Preference.first
    if params[:change_artist]
      @pref.allow_create_artist.boolean = !@pref.allow_create_artist.boolean
    end
  end
end
