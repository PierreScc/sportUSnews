class ArticlesController < ApplicationController
  def index
    if params[:search]
      @articles = Article.where("title LIKE ? OR content LIKE ?", "%#{params[:search]}%", "%#{params[:search]}%")
    else
      @articles = Article.all
    end
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to @article
    else
      render :new
    end
  end

  private

  def article_params
    params.require(:article).permit(:title, :content, :league)
  end
end
