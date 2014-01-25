class Stock < ActiveRecord::Base
	has_many :providers
	accepts_nested_attributes_for :providers, allow_destroy: true,
									reject_if: proc { |provider| provider[:name].blank? }
end