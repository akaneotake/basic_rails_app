require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  render_views
  describe 'POST /users' do
    it 'create a new user' do
      post :create, params: { username: 'Akane Otake' }

      expect(User.count).not_to eq(0)
    end

    it 'responds with a user object' do
      post :create, params: { username: 'Akane Otake' }
      expected_response = {
        user: {
          username: 'Akane Otake'
        }
      }
      expect(response.body).to eq (expected_response.to_json)
    end
  end
end
