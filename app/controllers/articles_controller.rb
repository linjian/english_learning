class ArticlesController < ApplicationController
  def index
    @articles = current_user.articles
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
  end

  def create
    @article = current_user.articles.build(params[:article])
    if @article.save
      redirect_to article_path(@article)
    else
      render :new
    end
  end
end
