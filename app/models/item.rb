class Item < ActiveRecord::Base
         
   belongs_to :agenda
      
   attr_accessible :topic, :body, :agenda_id
   
   validates :topic, :presence => true
   validates :body, :presence => true
end
