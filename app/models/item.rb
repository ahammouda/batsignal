class Item < ActiveRecord::Base
         
   belongs_to :agenda
   has_many :comments, :as => :commentable
      
   attr_accessible :topic, :body
   
   validates :topic, :presence => true

end
