class Admin::PreferencesController < ApplicationController

  def index
  end

  def change
    @pref = Preference.first
    if params[:change_artist]

  end
end
