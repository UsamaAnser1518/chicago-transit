# frozen_string_literal: true

# Migration to create Routes table
class CreateRoutes < ActiveRecord::Migration[7.0]
  def change
    create_table :routes do |t|
      t.string :route_id

      t.timestamps
    end
  end
end
