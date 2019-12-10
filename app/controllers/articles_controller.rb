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
    @article = Article.new(required_params)
    @article.save
  end

  private

  def required_params
    params.require(:article).permit(:title, :content)
  end
end
