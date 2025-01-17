# frozen_string_literal: true

# spec/controllers/stops_controller_spec.rb
require 'rails_helper'

RSpec.describe StopsController, type: :controller do
  # Test for index action
  describe 'GET #index' do
    it 'responds successfully with an HTTP 200 status code' do
      get :index
      expect(response).to be_successful
      expect(response).to have_http_status(200)
    end

    it 'renders the index template' do
      get :index
      expect(response).to render_template('index')
    end
  end
end
