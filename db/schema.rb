# frozen_string_literal: true

# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 20_240_326_145_400) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'routes', force: :cascade do |t|
    t.string 'route_id', default: '', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['route_id'], name: 'index_routes_on_route_id', unique: true
  end

  create_table 'stops', force: :cascade do |t|
    t.string 'stop_id', null: false
    t.string 'on_street', null: false
    t.string 'cross_street', null: false
    t.float 'boardings'
    t.float 'alightings'
    t.float 'latitude'
    t.float 'longitude'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['stop_id'], name: 'index_stops_on_stop_id', unique: true
  end

  create_table 'stops_routes', force: :cascade do |t|
    t.bigint 'stop_id', null: false
    t.bigint 'route_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['route_id'], name: 'index_stops_routes_on_route_id'
    t.index ['stop_id'], name: 'index_stops_routes_on_stop_id'
  end

  add_foreign_key 'stops_routes', 'routes'
  add_foreign_key 'stops_routes', 'stops'
end
