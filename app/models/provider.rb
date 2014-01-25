class Provider < ActiveRecord::Base
  belongs_to :stock
  has_many :denominations
  accepts_nested_attributes_for :denominations, allow_destroy: true,
									reject_if: proc { |a| a[:name].blank? }
end
