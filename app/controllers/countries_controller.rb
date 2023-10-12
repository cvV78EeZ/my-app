class CountriesController < ApplicationController
    def index
        @title = params[:おすすめスポット]
        if @title.present?
          @posts = Post.where('title LIKE ?', "%#{@おすすめスポット}%")
        else
          @posts = Post.all
        end
        render :index
      end

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
