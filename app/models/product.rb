class Product < ActiveRecord::Base

  has_many :orders
  has_many :comments

  def avg_rating
    comments.average(:rating).to_f
  end

  validates :name, presence: true

end
