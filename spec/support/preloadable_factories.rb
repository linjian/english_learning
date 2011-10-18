Factory.preload do
  factory(:user_1) { Factory(:user_1) }

  factory(:article_1) { Factory(:article_1, :user => users(:user_1)) }
end
