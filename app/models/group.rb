class Group < ActiveRecord::Base
  has_many :memberships, foreign_key: :group_id, dependent: :destroy
  has_many :users, through: :memberships
end
