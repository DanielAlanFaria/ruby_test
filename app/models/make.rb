class Make < ActiveRecord::Base
	
	def self.verificar_persistencia(json)
	    Make.where(name: json["Nome"]).any? ? false : true
  	end

  	def self.salvar_makes(makes_json)
	    makes_json.each do |json| 
		    if verificar_persistencia(json)
				make = Make.new(name: json["Nome"], webmotors_id: json["Id"])
				make.save!	
		    end
		end
  	end
end