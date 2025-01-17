# frozen_string_literal: true

# The Controller for Stops
class StopsController < ApplicationController
  def index
    @stop_with_most_routes = Stop.most_routes
  end
end
