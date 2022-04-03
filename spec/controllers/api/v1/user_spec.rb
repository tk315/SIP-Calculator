require 'rails_helper'

RSpec.describe API::V1::User, type: :request do
  include API::V1::Helpers::User

  before :each do
    @base_url = '/api/v1/user'
  end

  describe 'GET /api/v1/user/fetch-all-user' do
    it 'should return ok' do
      get @base_url + '/fetch-all-user'
      expect(response).to have_http_status(:ok)
    end
  end

  describe 'POST /api/v1/user/create-user' do
    context 'when valid params' do
      it 'should return created' do
        params = {
          name: 'lmn',
          email: 'lmn@gmail.com',
          phone: '9895967896',
          state: 'Rajasthan',
          city: 'Jaipur',
          pan: 'ARGIL4576L',
          password: 'pass@123',
          dob: '2000-08-12'
        }
        post @base_url + '/create-user', params: params
        expect(response).to(have_http_status(:created))
        expect(JSON.parse(response.body).count).to eq(5)
        expect(JSON.parse(response.body)['name']).to eq(params[:name])
        expect(JSON.parse(response.body)['email']).to eq(params[:email])
        expect(JSON.parse(response.body)['state']).to eq(params[:state])
        expect(JSON.parse(response.body)['city']).to eq(params[:city])
        expect(JSON.parse(response.body)['dob']).to eq(params[:dob])
      end
    end
    context 'when params are missing' do
      it 'should return created' do
        params = {
          name: 'lmn',
          email: 'lmn@gmail.com'
        }
        post @base_url + '/create-user', params: params
        expect(response).to(have_http_status(:bad_request))
      end
    end
  end
end
