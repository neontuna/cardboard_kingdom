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
end
