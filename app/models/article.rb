class Article < ActiveRecord::Base
  belongs_to :user

  has_many :words

  validates :title,
    :presence   => true,
    :length     => {:maximum => 255},
    :uniqueness => {:scope   => :user_id}
  validates :content,
    :presence   => true,
    :length     => {:maximum => 10000}

  def mark_word(word)
    if index = content.index(word)
      new_word = self.words.build(:starting_index => index, :char_count => word.size, :origin_name => word)
      if new_word.save
        new_word
      end
    end
  end
end
