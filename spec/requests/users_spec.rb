require 'rails_helper'

RSpec.describe "Users", type: :request do

  describe 'POST #create' do
    let(:user) do
    {
      username: 'cathy',
      password_digest: 'cathy'
    }
    end
    it 'returns success with good parameters' do
      post "/users", params: { user: { username: 'cathy', password_digest: 'cathy' } }
      expect(response.status).to eq(201)
    end

    it 'fails with bad parameters' do
      post "/users", params: { user: { username: 'cathy' } }
      expect(response.status).to eq(422)
    end
  end
end
