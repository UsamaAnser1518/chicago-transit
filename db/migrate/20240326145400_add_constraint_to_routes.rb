# frozen_string_literal: true

# Migration to add constraints in Route table
class AddConstraintToRoutes < ActiveRecord::Migration[7.0]
  def change
    change_column_null :routes, :route_id, false
    change_column_default :routes, :route_id, ''

    add_index :routes, :route_id, unique: true
  end
end
