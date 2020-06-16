class Admin::PreferencesController < ApplicationController

  def index
    @to_select = ["true",  "false"]
  end

  def change
  end
end
