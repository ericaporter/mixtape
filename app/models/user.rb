class User < ActiveRecord::Base
  has_many :tracks
  has_many :comments

  mount_uploader :photo, ProfilePicUploader
  

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :rememberable, :trackable, :validatable

  validates :username, presence: true, uniqueness: true, length: { minimum: 2 }
  validates :email, presence: true, uniqueness: true

end
