class Gift < ActiveRecord::Base
  # Remember to create a migration!
  validates :name, presence:  true, length: {minimum: 3}
  belongs_to :user
end
