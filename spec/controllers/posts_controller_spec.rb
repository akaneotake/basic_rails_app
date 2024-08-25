require 'rails_helper'

RSpec.describe PostsController, type: :controller do
  render_views
  describe 'POST /posts' do
    it 'create a new post' do
      post :create, params: { content: 'Hello World!' }

      expect Post.find_by(content: 'Hello World!')
    end

    it 'responds with a post object' do
      post :create, params: { content: 'Hello World!' }
      expected_response = {
        post: {
          content: 'Hello World!'
        }
      }
      expect(response.body).to eq (expected_response.to_json)
    end
  end

  describe 'PUT /posts/:id' do
    it 'update a post' do
      expect(response.status).to eq (200)
    end
  end

  describe 'DELETE /posts:id' do
    it 'delete a post' do
      expect(response.status).to eq (200)
    end
  end
end
