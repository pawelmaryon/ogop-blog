class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    @article.save

    retirect_to @article
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
  end

  def destroy
  end

  private
  def article_params
    params.require(:article).permit(:title, :content)
  end
end
