# frozen_string_literal: true

# The Route Model
class Route < ApplicationRecord
  has_many :stops_routes
  has_many :stops, through: :stops_routes

  validates :route_id, presence: true, uniqueness: true

  def self.longest
    Route.joins(:stops)
         .select('routes.*, COUNT(stops.id) AS stops_count')
         .group('routes.id')
         .order('stops_count DESC')
  end
end
