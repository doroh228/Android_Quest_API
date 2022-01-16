class User < ApplicationRecord
  belongs_to :role

  validates :login, presence: true, uniqueness: true

end
