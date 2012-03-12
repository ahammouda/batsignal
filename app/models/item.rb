class Item < ActiveRecord::Base
         
   belongs_to :agenda
      
   attr_accessible :topic, :body
   
   validates :topic, :presence => true

   opinio_subjectum
end
