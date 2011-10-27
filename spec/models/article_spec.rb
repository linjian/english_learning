require 'spec_helper'

describe Article do
  before do
    @article = articles(:article_1)
    @words = @article.content.split(' ')
  end

  context "#mark_word" do
    it "should create a word" do
      lambda {
        word = @words.first
        new_word = @article.mark_word(word)
        new_word.article.should == @article
        new_word.user.should == @article.user
        new_word.starting_index.should == 0
        new_word.char_count.should == word.size
        new_word.origin_name.should == word
      }.should change(Word, :count).by(1)
    end
  end
end
