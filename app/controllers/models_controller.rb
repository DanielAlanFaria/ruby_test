class ModelsController < ApplicationController
    layout "application"
    
    def index
        make = Make.find_by_id(params[:make_id]) if params[:make_id].present?
        @models = Model.where(make_id: make.id)

        # Make request for Webmotors site
        response = Net::HTTP.post_form(URI("#{url_webmotors}/modelos"), { marca: make.webmotors_id })
        models_json = JSON.parse response.body

        # Deixar o Model(MVC) tratar os dados
        Model.salvar_models(models_json, make.id)

        render layout: false
    end
end