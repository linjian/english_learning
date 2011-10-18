class Article < ActiveRecord::Base
  belongs_to :user

  validates :title,
    :presence   => true,
    :length     => {:maximum => 255},
    :uniqueness => {:scope   => :user_id}
  validates :content,
    :presence   => true,
    :length     => {:maximum => 10000}
end
