FactoryGirl.define do
  factory :article_1, :class => Article do
    title       "article_1"
    content     "This is a test article"
    association :user, :factory => :user_1
  end
end