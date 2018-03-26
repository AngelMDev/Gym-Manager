class Klass < ActiveRecord::Base
  has_many :reservations
  has_many :users, through: :reservations
  def sign_ups
    "#{reservations.length}/#{capacity}"
  end
end