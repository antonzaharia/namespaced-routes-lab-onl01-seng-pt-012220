class Admin::Preference < ActiveRecord::Base

  def change_artist
    if self.allow_create_artists == true
      self.update(allow_create_artists: false)
      self.save
    else
      self.update(allow_create_artists: true)
      self.save
    end
  end
end
