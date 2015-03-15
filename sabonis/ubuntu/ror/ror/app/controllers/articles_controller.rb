class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
  end

  def create
    @article = Article.new(article_param)
    @article.save
    redirect_to @article
  end

  private
    def article_param
      params.require(:article).permit(:title, :text)
    end
end
