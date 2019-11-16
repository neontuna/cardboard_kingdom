# == Schema Information
#
# Table name: products
#
#  id          :bigint           not null, primary key
#  description :string
#  price_cents :integer          default(0), not null
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Product < ApplicationRecord
  has_one_attached :image
  
  validates :title, length: { in: 2..40 }
  validates :description, length: { in: 2..400 }
  validates :price_cents, presence: true
end
