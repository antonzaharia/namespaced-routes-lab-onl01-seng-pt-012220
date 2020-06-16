class Admin::PreferencesController < ApplicationController

  def index
    @to_select = ["true",  "false"]
  end

  def change
    raise params.inspect
  end
end
