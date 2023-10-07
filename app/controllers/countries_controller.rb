class CountriesController < ApplicationController
    def toppage
        render :toppage
    end

    def create
        redirect_to new_countries_path    
    end 
    
    def japan
        render :japan
    end
end
