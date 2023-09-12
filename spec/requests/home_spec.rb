require 'rails_helper'

RSpec.describe 'For Home Index', type: :request do
  describe 'GET/index' do
    it 'should redirect to the home page' do
      get '/home'
      expect(response.status).to eq(200)
      expect(response.body).to include('The Budget App') # Updated expectation
      expect(response.body).to include('LOG IN')
    end
  end
end
