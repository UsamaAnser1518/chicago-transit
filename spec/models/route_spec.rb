# frozen_string_literal: true

# Rspec Route Model
require 'rails_helper'

RSpec.describe Route, type: :model do
  describe 'validations' do
    it 'is valid with valid attributes' do
      route = Route.new(route_id: '1')
      expect(route).to be_valid
    end

    it 'is not valid without a route_id' do
      route = Route.new(route_id: nil)
      expect(route).not_to be_valid
    end
  end

  describe 'associations' do
    it 'should have many stops' do
      t = Route.reflect_on_association(:stops)
      expect(t.macro).to eq(:has_many)
    end
  end
end
