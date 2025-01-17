# Chicago Bus System Analysis

This application provides an analysis and visualization of the Chicago bus system, focusing on bus stops, routes, and ridership data. It features data aggregation, detailed analysis of bus routes and stops, and interactive visualizations to offer insights into public transportation trends in Chicago.

## Features

- Stores and manages bus system data within a SQL database.
- Identifies the longest bus routes based on the number of stops.
- Determines the bus stop that appears on the most routes.
- Visualizes data using grid displays and charts for easy interpretation of the bus system's usage.

## Getting Started

To set up the project locally:

1. Download the zip file and navigate into the directory:
```
cd chicago-bus-system
```

2. Install the required Ruby gems and Node.js packages:
```
bundle install
```

3. Set up the database:
```
rails db:create db:migrate db:seed
```

4. Start the Rails server:
```
rails s
```

Access the application at `http://localhost:3000`.

## Technology Stack

- Ruby on Rails: A web application development framework.
- PostgreSQL: A powerful, open-source object-relational database system.
- Tailwind CSS: A utility-first CSS framework for rapid UI development.
- Chart.js: Simple yet flexible JavaScript charting for designers & developers.
- RSpec: A testing tool for Ruby, providing a rich testing framework.

