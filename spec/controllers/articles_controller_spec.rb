require 'spec_helper'

describe ArticlesController do
  it "GET 'index' should be successful" do
    get 'index'
    response.should be_success
    assigns(:articles).should_not be_empty
  end

  it "GET 'show' should be successful" do
    get 'show', :id => articles(:article_1)
    response.should be_success
  end

  it "GET 'new' should be successful" do
    get 'new'
    response.should be_success
  end

  it "POST 'create' should be successful" do
    post 'create', :article => {:title => 'title', :content => 'content'}
    response.should redirect_to article_path(assigns(:article))
  end

  it "POST 'create' should be failed" do
    post 'create', :article => {}
    response.should render_template :new
  end
end
