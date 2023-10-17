class CountriesController < ApplicationController
  def index
    @title = params[:title]
    if @title.present?
      @posts = Country.where('title LIKE ?', "%#{@title}%")
    else
      @posts = Country.all
    end
    render :index
  end

    def new
      @post = Country.new
      render :new
    end

    def create
      @post = Country.new(country_params)

      if params[:country][:image]
        @post.image.attach(params[:country][:image])
      end

      if @post.save
        redirect_to index_countries_path, notice: '登録しました'
      else
        render :new, status: :unprocessable_entity
      end
    end

  private
  def country_params
    params.require(:country).permit(:title, :body, :image)
  end
end
