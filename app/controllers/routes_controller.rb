# frozen_string_literal: true

# The Controller for Routes
class RoutesController < ApplicationController
  def index
    @longest_routes = Route.longest.limit(10)
  end
end
