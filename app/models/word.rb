class Word < ActiveRecord::Base
  belongs_to :user
  belongs_to :article

  before_create :set_user_id

  def set_user_id
    self.user_id = self.article.user_id
  end
end
