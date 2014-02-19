class User < ActiveRecord::Base
	#serialize :info, ActiveRecord::Coders::Hstore

#	after_create :set_info#

#	def set_info
#		if /F/ =~ self.school_id.to_s
#			self.grade = 0
#		else
#			/(..)/ =~ self.school_id.to_s
#			self.grade = $1
#		end
#	end
end
