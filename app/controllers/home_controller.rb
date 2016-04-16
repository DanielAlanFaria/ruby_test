class HomeController < ApplicationController
    layout "application"
    
    def index
        # Make request for Webmotors site
        response = Net::HTTP.post_form(URI("#{url_webmotors}/marcas"), {})
        json = JSON.parse response.body

        Make.salvar_makes(json)
    end
end
