# frozen_string_literal: true

# The StopsRoute Model
class StopsRoute < ApplicationRecord
  belongs_to :stop
  belongs_to :route
end
