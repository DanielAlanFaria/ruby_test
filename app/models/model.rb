class Model < ActiveRecord::Base

	def self.verificar_persistencia(json, make)
	    Model.where(name: json["Nome"], make_id: make).any? ? false : true
  	end

  	def self.salvar_models(models_json, make)
	    models_json.each do |json| 
		    if verificar_persistencia(json, make)
				model = Model.new(make_id: make, name: json["Nome"])
				model.save!	
		    end
		end
  	end
end