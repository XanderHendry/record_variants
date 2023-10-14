class Record < ApplicationRecord
  has_many :variants

  def double_lp?
    self.double_lp
  end

 def self.order_by_most_recent
   all.order(created_at: :desc)
 end

 def count_variants
  self.variants.count
 end
end