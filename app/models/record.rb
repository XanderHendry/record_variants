class Record < ApplicationRecord
  has_many :variants

  def double_lp?
    self.double_lp
  end
end