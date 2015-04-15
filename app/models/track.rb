class Track < ActiveRecord::Base
  has_many :tags
  belongs_to :user
  has_many :comments

  validates :title, presence: true, uniqueness: true, length: { minimum: 2 }
  validates :track_image, presence: true

  mount_uploader :track_image, TrackImageUploader
  mount_uploader :audio_track, AudioTrackUploader
end
