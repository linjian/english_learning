class WordMarksController < ApplicationController
  def create
    @article = Article.find(params[:article_id])
    if @article.mark_word(params[:word])
      flash[:notice] = "successful"
    else
      flash[:error] = "faile"
    end
    redirect_to article_path(@article)
  end
end
