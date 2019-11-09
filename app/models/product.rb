# == Schema Information
#
# Table name: products
#
#  id          :bigint           not null, primary key
#  description :string
#  price_cents :integer
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Product < ApplicationRecord
end
