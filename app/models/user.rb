class User < ApplicationRecord
  belongs_to :role
  has_and_belongs_to_many :games

  validates :login, presence: true, uniqueness: true

end
