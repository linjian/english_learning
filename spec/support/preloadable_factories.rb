Factory.preload do
  factory(:user_1) { Factory(:user_1) }

  factory(:article_1) { Factory(:article_1, :user => users(:user_1)) }

  factory(:word_1_1) { Factory(:word_1_1, :article => articles(:article_1), :user => users(:user_1)) }
  factory(:word_1_4) { Factory(:word_1_4, :article => articles(:article_1), :user => users(:user_1)) }
end
