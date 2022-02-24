require 'rails_helper'

RSpec.describe 'Posts', type: :request do
  describe 'GET index' do
    it 'get index for posts' do
      get '/users/213/posts'
      expect(response).to have_http_status(200)
      expect(response).to render_template(:index)
      expect(response.body).to include('213')
    end
    it 'get a specific post' do
      get '/users/420/posts/69'
      expect(response).to have_http_status(200)
      expect(response.body).to include('420')
      expect(response.body).to include('69')
    end
  end
end
