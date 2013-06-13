class Outputdevice < ActiveRecord::Base
	#attr_accessible :name, :statuso
	#validates :name, presence: true

	#toogle the status of the outputdevice
	def toogle
	 self.statuso = !self.statuso
	end
end
