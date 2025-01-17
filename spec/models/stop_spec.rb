# frozen_string_literal: true

# Rspec Stop Model
require 'rails_helper'

RSpec.describe Stop, type: :model do
  it 'is valid with valid attributes' do
    stop = Stop.new(stop_id: '1', on_street: 'Main St', cross_street: '1st Ave')
    expect(stop).to be_valid
  end

  describe '.most_routes' do
    it 'returns the stop with the most routes' do
      stop1 = Stop.create!(stop_id: '1', on_street: 'Main St', cross_street: '1st Ave')
      stop2 = Stop.create!(stop_id: '2', on_street: 'Second St', cross_street: '2nd Ave')
      route1 = Route.create!(route_id: '1')
      route2 = Route.create!(route_id: '2')
      stop1.routes << route1
      stop2.routes << [route1, route2]

      expect(Stop.most_routes).to eq(stop2)
    end
  end
end
