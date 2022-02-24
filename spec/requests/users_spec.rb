require 'rails_helper'

RSpec.describe 'Users', type: :request do
  describe 'GET /' do
    it 'get index page as root page' do
      get '/'
      expect(response).to have_http_status(200)
      expect(response).to render_template('index')
    end
    it "get user page" do
      get '/users/240'
      expect(response).to have_http_status(200)
      expect(response.body).to include('240')
    end
    it '/users path should return the index' do
      get '/users'
      expect(response).to have_http_status(200)
      expect(response).to render_template(:index)
    end
  end
end