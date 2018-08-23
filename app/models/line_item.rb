class LineItem < ApplicationRecord
  belongs_to :post
  belongs_to :outfit
end
