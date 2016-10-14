class Form < ApplicationRecord
  has_many :servers
  accepts_nested_attributes_for :servers, allow_destroy: true
end
