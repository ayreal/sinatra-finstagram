class User < ActiveRecord::Base
  has_many :photos

  def last_photo
    self.photos.last
  end
end
