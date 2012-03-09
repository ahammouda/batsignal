class Item < ActiveRecord::Base
   belongs_to :agenda
      
   attr_accessible :topic, :topic_body

   validates :topic, :presence => true
   validates :body, :presence => true
end
