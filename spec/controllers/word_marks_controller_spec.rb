require 'spec_helper'

describe WordMarksController do
  before do
    @article = articles(:article_1)
  end

  it "POST 'create' should be successful" do
    post 'create', :article_id => @article, :word => @article.content.split(' ')[1]
    flash[:notice].should_not be_nil
    response.should redirect_to article_path(@article)
  end

  it "POST 'create' should be failed" do
    post 'create', :article_id => @article, :word => "not_exists_worrrrrrd"
    flash[:error].should_not be_nil
    response.should redirect_to article_path(@article)
  end
end
