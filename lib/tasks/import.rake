# frozen_string_literal: true

require 'csv'

namespace :import do
  desc 'Import bus stops and routes from a file'
  task bus_data: :environment do
    file_path = 'route_data.csv'
    CSV.foreach(file_path, headers: true) do |row|
      stop = Stop.find_or_create_by(
        stop_id: row['stop_id'],
        on_street: row['on_street'],
        cross_street: row['cross_street'],
        boardings: row['boardings'].to_f,
        alightings: row['alightings'].to_f,
        latitude: row['location']['latitude'].to_f,
        longitude: row['location']['longitude'].to_f
      )

      routes = row['routes']
      if routes.present?
        route_ids = routes.split(',')
        route_ids.each do |route_id|
          route = Route.find_or_create_by(route_id: route_id.strip)
          StopsRoute.find_or_create_by(stop:, route:)
        end
      end
    end
  end
end
