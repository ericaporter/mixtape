class Track < ActiveRecord::Base
  has_many :tags
  belongs_to :user

  validates :title, presence: true, uniqueness: true, length: { minimum: 2 }
  validates :track_image, presence: true

  mount_uploader :track_image, TrackImageUploader
  mount_uploader :audio_track, AudioTrackUploader
end
