class Note < ActiveRecord::Base
	mount_uploader :photo, PhotoUploader
	
	def self.search(search)
  		if search
    		where('title LIKE ? OR description LIKE ?', "%#{search}%", "%#{search}%");
  		else
    	scoped
  	end
end	
end
