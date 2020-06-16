class Admin::Preference < ActiveRecord::Base

  def change_artist(pref)
    if pref.allow_create_artists == true
      pref.update(allow_create_artists: false)
      pref.save
    else
      pref.update(allow_create_artists: true)
      pref.save
    end
  end
end
