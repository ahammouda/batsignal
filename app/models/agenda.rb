class Agenda < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: [:slugged, :scoped], :scope => :user
  acts_as_list
  acts_as_tree
  acts_as_audited
  has_associated_audits
 
  belongs_to :user
  has_many :items
  
  attr_accessible :user_id, :name, :description, :private

  validate :name, :presence => true
  validate :user_id, :presence => true
end
