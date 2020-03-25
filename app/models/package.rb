# frozen_string_literal: true

# Model for Package
class Package < ApplicationRecord

  belongs_to :courier, optional: true

end
