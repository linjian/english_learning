class User < ActiveRecord::Base
  has_many :articles, :dependent => :destroy

  validates_presence_of :login, :password
end
