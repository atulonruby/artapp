class Group < ActiveRecord::Base
  has_many :group_users
  has_many :users, through: :group_users

  def to_s
  	"#{first_name} #{last_name}"
  end
end
