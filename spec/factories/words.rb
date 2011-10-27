FactoryGirl.define do
  factory :word_1_1, :class => Word do
    association :article, :factory => :article_1
    association :user, :factory => :user_1
    starting_index 0
    char_count 4
    origin_name "This"
  end

  factory :word_1_4, :class => Word do
    association :article, :factory => :article_1
    association :user, :factory => :user_1
    starting_index 11
    char_count 4
    origin_name "test"
  end
end