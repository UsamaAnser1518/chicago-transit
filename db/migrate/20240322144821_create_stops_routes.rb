# frozen_string_literal: true

# Migration to create StopsRoute bridge table
class CreateStopsRoutes < ActiveRecord::Migration[7.0]
  def change
    create_table :stops_routes do |t|
      t.references :stop, null: false, foreign_key: true
      t.references :route, foreign_key: true

      t.timestamps
    end
  end
end
