class Form < ApplicationRecord
  has_many :servers
  has_many :load_balancers
  has_many :deployments
  has_many :architectures
  accepts_nested_attributes_for :servers, allow_destroy: true
  accepts_nested_attributes_for :load_balancers, allow_destroy: true
  accepts_nested_attributes_for :deployments, allow_destroy: true
  accepts_nested_attributes_for :architectures, allow_destroy: true
end
