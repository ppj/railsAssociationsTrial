class Group < ActiveRecord::Base
  has_many :memberships, foreign_key: :user_id, dependent: :destroy
  has_many :users, through: :memberships
end
