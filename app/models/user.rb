class User < ActiveRecord::Base
  has_many :posts, dependent: :destroy
  has_many :memberships, foreign_key: :group_id, dependent: :destroy
  has_many :groups, through: :memberships
end
