# frozen_string_literal: true

# Migration to create Stops table
class CreateStops < ActiveRecord::Migration[7.0]
  def change
    create_table :stops do |t|
      t.string :stop_id
      t.string :on_street
      t.string :cross_street
      t.float :boardings
      t.float :alightings
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
