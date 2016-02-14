class Artist < ActiveRecord::Base
  mount_uploader :artistimg, ArtistImgUploader
  has_many :songs, dependent: :destroy
end
