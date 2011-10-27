class Word < ActiveRecord::Base
  belongs_to :user
  belongs_to :article

  validates_presence_of :article_id, :user_id
  validates :starting_index,
    :presence     => true,
    :numericality => {:greater_than_or_equal_to => 0,
                      :only_integer             => true}
  validates :char_count,
    :presence     => true,
    :numericality => {:greater_than_or_equal_to => 0,
                      :less_than_or_equal_to    => 255,
                      :only_integer             => true}
  validates :origin_name,
    :presence => true,
    :length   => {:maximum => 255}

  before_validation :set_user_id

  def set_user_id
    self.user_id = self.article.user_id
  end
end
