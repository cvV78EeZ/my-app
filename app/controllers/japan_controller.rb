class JapanController < ApplicationController
    def new
        @post = Japan.new
        render :new 
      end

      def create
        @post = japan_params

        if params[:Japan][:image]
          @post.image.attach(params[:Japan][:image])
        end
    
        if @post.save
          redirect_to index_post_path, notice: '登録しました'
        else
          render :new, status: :unprocessable_entity
        end
      end
    
      private
      def japan_params
        params.require(:japan).permit(:title, :body, :image)
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
