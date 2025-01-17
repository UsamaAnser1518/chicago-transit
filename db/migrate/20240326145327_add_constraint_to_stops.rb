# frozen_string_literal: true

# Migration to add constraints in Stop table
class AddConstraintToStops < ActiveRecord::Migration[7.0]
  def change
    change_column_null :stops, :stop_id, false
    change_column_null :stops, :on_street, false
    change_column_null :stops, :cross_street, false

    add_index :stops, :stop_id, unique: true
  end
end
