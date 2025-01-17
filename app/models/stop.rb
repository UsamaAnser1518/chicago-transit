# frozen_string_literal: true

# The Stop Model
class Stop < ApplicationRecord
  has_many :stops_routes
  has_many :routes, through: :stops_routes

  validates :stop_id, presence: true, uniqueness: true
  validates :on_street, presence: true
  validates :cross_street, presence: true

  def self.most_routes
    Stop.joins(:routes)
        .select('stops.*, COUNT(routes.id) AS routes_count')
        .group('stops.id')
        .order('routes_count DESC')
        .first
  end
end
