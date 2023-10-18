class JapanController < ApplicationController
    def new
        render :new 
      end

      def create
        redirect_to new_japan_path
      end  

      def index
        @title = params[:title]
        if @title.present?
          @posts = Japan.where('title LIKE ?', "%#{@title}%")
        else
          @posts = Japan.all
        end
        render :index
      end
end
