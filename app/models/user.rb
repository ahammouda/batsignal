class User < ActiveRecord::Base
  authenticates_with_sorcery!

  has_many :agendas

  acts_as_follower
  acts_as_followable
  acts_as_audited
  acts_as_audited :associated_with => :agenda

  extend FriendlyId   # enable semantic urls (i.e., users/estill01 vs. users/6)
  friendly_id :username, use: [:slugged, :history]
  mount_uploader :avatar, AvatarUploader    # enable carrierwave image uploader 

  attr_accessible :username, :email, :phone_number, :password, :avatar, :avatar_cache
  attr_accessor :password

  validates :username, :uniqueness => true
  validates :username, :length => {:minimum => 1}
  validates :password, :length => {:minimum => 4}
end
