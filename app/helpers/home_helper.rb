module HomeHelper

	def make_collection
		Make.where.not(name: "").order(:name)
	end
end
