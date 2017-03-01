class Architecture < ApplicationRecord
  belongs_to(:form, required: false)
end
